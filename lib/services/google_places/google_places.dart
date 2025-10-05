import 'package:dio/dio.dart';
import 'package:weather/env.dart';
import 'package:weather/services/google_places/data.dart';

class GooglePlacesService {
  final Dio dio;

  GooglePlacesService(this.dio);

  Future<List<Place>> fetchNearbyLocalities(
    double latitude,
    double longitude,
  ) async {
    final response = await dio.post(
      'https://places.googleapis.com/v1/places:searchNearby',
      data: {
        "includedTypes": ["locality"],
        "maxResultCount": 10,
        "locationRestriction": {
          "circle": {
            "center": {"latitude": latitude, "longitude": longitude},
            "radius": 2500.0
          }
        }
      },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'X-Goog-Api-Key': googleMapsApiKey,
          'X-Goog-FieldMask': 'places.displayName,places.location',
        },
      ),
    );

    final data = SearchNearbyResponse.fromJson(response.data);

    return data.places ?? [];
  }

  Future<TimeZoneResponse> fetchTimeZone(
      double latitude, double longitude) async {
    final response = await dio.get(
      'https://maps.googleapis.com/maps/api/timezone/json',
      queryParameters: {
        'location': '$latitude,$longitude',
        'timestamp': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'key': googleMapsApiKey,
      },
    );

    return TimeZoneResponse.fromJson(response.data);
  }
}
