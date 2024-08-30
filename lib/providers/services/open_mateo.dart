import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/dio.dart';
import 'package:weather/services/open_mateo/open_mateo.dart';

final openMateoServiceProvider = Provider<OpenMateoService>((ref) {
  final dio = ref.watch(dioProvider);
  return OpenMateoService(dio);
});
