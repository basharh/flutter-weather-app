import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:weather/services/google_places/data.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/services/open_mateo/open_mateo.dart';

Future<Map<Place, (CurrentWeather?, ScreenCoordinate)>> fetchWeatherForPlaces(
  List<Place> places,
  OpenMateoService openMateoService,
  GoogleMapController mapController,
) async {
  // fetch weather for each place
  final weatherFutures = places.map((place) {
    final lat = place.location?.latitude;
    final lng = place.location?.longitude;

    if (lat != null && lng != null) {
      return openMateoService.fetchWeatherAtLocation(
        latitude: lat,
        longitude: lng,
      );
    } else {
      return Future.value(null);
    }
  }).toList();

  final weatherList = await Future.wait(weatherFutures);

  final coordinatesFutures = places.map((place) {
    final lat = place.location?.latitude;
    final lng = place.location?.longitude;

    if (lat != null && lng != null) {
      return mapController.getScreenCoordinate(LatLng(lat, lng));
    } else {
      return Future.value(null);
    }
  }).toList();

  final coordinatesList = await Future.wait(coordinatesFutures);

  final result = <Place, (CurrentWeather?, ScreenCoordinate)>{};

  for (var i = 0; i < places.length; i++) {
    if (coordinatesList[i] != null) {
      result[places[i]] = (weatherList[i], coordinatesList[i]!);
    }
  }

  return result;
}
