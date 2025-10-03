import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather/providers/services/google_places.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/google_places/data.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/map/util.dart';
import 'package:weather/widgets/map/weather_bubble.dart';

class WeatherMap extends ConsumerStatefulWidget {
  const WeatherMap({super.key});

  @override
  ConsumerState<WeatherMap> createState() => WeatherMapState();
}

class WeatherMapState extends ConsumerState<WeatherMap> {
  /// list of places with their weather and screen coordinates
  Map<Place, (CurrentWeather?, ScreenCoordinate)> placesWithWeatherAndCoords =
      {};

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) async {
            if (!mounted) return;

            // sleep
            await Future.delayed(const Duration(milliseconds: 50));

            final googlePlacesService = ref.read(googlePlacesServiceProvider);

            final nearbyPlaces =
                await googlePlacesService.fetchNearbyLocalities(
              37.42796133580664,
              -122.085749655962,
            );

            final placesWithWeatherAndCoords = await fetchWeatherForPlaces(
              nearbyPlaces,
              ref.read(openMateoServiceProvider),
              controller,
            );

            setState(() {
              this.placesWithWeatherAndCoords = placesWithWeatherAndCoords;
            });

            _controller.complete(controller);
          },
        ),
        for (var MapEntry(key: place, value: (weather, coord))
            in placesWithWeatherAndCoords.entries)
          Positioned(
            left: coord.x.toDouble() - 50,
            top: coord.y.toDouble() - 50,
            child: WeatherBubble(
              place: place,
              weather: weather!,
            ),
          ),
      ],
    );
  }
}
