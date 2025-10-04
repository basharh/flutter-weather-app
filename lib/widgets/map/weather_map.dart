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
  /// current camera position
  CameraPosition? _currentCameraPosition;

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
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          onCameraIdle: () async {
            final controller = await _controller.future;

            final googlePlacesService = ref.read(googlePlacesServiceProvider);

            final nearbyPlaces =
                await googlePlacesService.fetchNearbyLocalities(
              _currentCameraPosition?.target.latitude ??
                  _kGooglePlex.target.latitude,
              _currentCameraPosition?.target.longitude ??
                  _kGooglePlex.target.longitude,
            );

            final placesWithWeatherAndCoords = await fetchWeatherForPlaces(
              nearbyPlaces,
              ref.read(openMateoServiceProvider),
              controller,
            );

            setState(() {
              this.placesWithWeatherAndCoords = placesWithWeatherAndCoords;
            });
          },
          onMapCreated: (GoogleMapController controller) async {
            if (!mounted) return;

            _controller.complete(controller);
          },
          onCameraMove: (CameraPosition position) {
            _currentCameraPosition = position;
          },
          onCameraMoveStarted: () {
            setState(() {
              placesWithWeatherAndCoords = {};
            });
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
