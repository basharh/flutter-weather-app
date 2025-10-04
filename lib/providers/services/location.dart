import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/services/location.dart';

final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});
