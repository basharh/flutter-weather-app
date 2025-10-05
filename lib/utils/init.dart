import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/providers/services/google_places.dart';
import 'package:weather/providers/services/location.dart';

class InitInfo {
  final Position position;
  final String timezone;

  InitInfo({
    required this.position,
    required this.timezone,
  });
}

final initInfoFutureProvider = FutureProvider<InitInfo>((ref) async {
  final locationService = ref.read(locationServiceProvider);
  final googlePlacesService = ref.read(googlePlacesServiceProvider);

  // TODO: handle permission denied and set default location
  final position = await locationService.getCurrentPosition();
  final timezone = (await googlePlacesService.fetchTimeZone(
        position.latitude,
        position.longitude,
      ))
          .timeZoneId ??
      'US/Pacific';

  return InitInfo(
    position: position,
    timezone: timezone,
  );
});

final initInfoProvider = Provider<InitInfo>((ref) {
  throw UnimplementedError();
});
