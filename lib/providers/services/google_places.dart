import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/dio.dart';
import 'package:weather/services/google_places/google_places.dart';

final googlePlacesServiceProvider = Provider<GooglePlacesService>((ref) {
  final dio = ref.watch(dioProvider);
  return GooglePlacesService(dio);
});
