import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/utils/init.dart';
import 'package:weather/utils/theme_data.dart';

extension SetScreenSize on WidgetTester {
  Future<void> setScreenSize(
      {double width = 540,
      double height = 960,
      double pixelDensity = 1}) async {
    final size = Size(width, height);
    await binding.setSurfaceSize(size);
  }
}

class TestMaterialApp extends StatelessWidget {
  final Widget child;
  final bool page;

  const TestMaterialApp({
    super.key,
    required this.child,
    this.page = false,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        initInfoProvider.overrideWithValue(InitInfo(
          position: Position(
            latitude: 40.7128,
            longitude: -74.0060,
            speedAccuracy: 0.0,
            speed: 0.0,
            headingAccuracy: 0.0,
            heading: 0.0,
            altitudeAccuracy: 0.0,
            altitude: 0.0,
            accuracy: 5.0,
            timestamp: DateTime.now(),
          ),
          timezone: 'America/New_York',
        )),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getThemeData(Brightness.light),
        home: page
            ? child
            : Scaffold(
                body: Center(
                  child: child,
                ),
              ),
      ),
    );
  }
}
