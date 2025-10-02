import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather/providers/services/google_places.dart';
import 'package:weather/widgets/map/weather_bubble.dart';

class WeatherMap extends ConsumerStatefulWidget {
  const WeatherMap({super.key});

  @override
  ConsumerState<WeatherMap> createState() => WeatherMapState();
}

class WeatherMapState extends ConsumerState<WeatherMap> {
  List<(double, double)> points = [];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 12,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) async {
              if (!mounted) return;

              // sleep
              await Future.delayed(const Duration(milliseconds: 50));

              final coordinates = await controller.getScreenCoordinate(
                const LatLng(37.42796133580664, -122.085749655962),
              );

              final googlePlacesService = ref.read(googlePlacesServiceProvider);

              final nearbyPlaces =
                  await googlePlacesService.fetchNearbyLocalities(
                37.42796133580664,
                -122.085749655962,
              );

              final nearbyPoints = await Future.wait(
                nearbyPlaces.map(
                  (place) async {
                    final coords = await controller.getScreenCoordinate(
                      LatLng(
                        place.location!.latitude!,
                        place.location!.longitude!,
                      ),
                    );

                    return (coords.x.toDouble(), coords.y.toDouble());
                  },
                ),
              );

              setState(() {
                points = [
                  // add the latlng for the center
                  (
                    coordinates.x.toDouble(),
                    coordinates.y.toDouble(),
                  ),
                  ...nearbyPoints
                ];
              });

              _controller.complete(controller);
            },
          ),

          // Overlay the weather bubbles at the points
          for (var point in points)
            Positioned(
              left: point.$1 - 50,
              top: point.$2 - 50,
              child: WeatherBubble(
                color: Colors.orangeAccent.withOpacity(0.7),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '25°C',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

          //Positioned(
          //left: points.isNotEmpty ? points.last.$1 - 75 : 0,
          //top: points.isNotEmpty ? points.last.$2 - 75 : 0,
          //child: WeatherBubble(
          //color: Colors.blueAccent.withOpacity(0.7),
          //child: const Padding(
          //padding: EdgeInsets.all(8.0),
          //child: Text(
          //'Weather Info',
          //style: TextStyle(color: Colors.white),
          //),
          //),
          //),
          //),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
