import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/providers/services/location.dart';

class InitInfo {
  final Position position;

  InitInfo({required this.position});
}

final initInfoFutureProvider = FutureProvider<InitInfo>((ref) async {
  final locationService = ref.read(locationServiceProvider);

  final position = await locationService.getCurrentPosition();

  return InitInfo(
    position: position,
  );
});

final initInfoProvider = Provider<InitInfo>((ref) {
  throw UnimplementedError();
});
