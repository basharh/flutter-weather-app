import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/pages/day_page.dart';
import 'package:weather/pages/map_page.dart';
import 'package:weather/pages/week_page.dart';

import 'package:weather/providers/brightness_mode.dart';
import 'package:weather/utils/init.dart';
import 'package:weather/utils/theme_data.dart';

void main() {
  runApp(
    const ProviderScope(
      child: WeatherApp(),
    ),
  );
}

class WeatherApp extends ConsumerWidget {
  final String initialRoute;

  const WeatherApp({super.key, this.initialRoute = '/week'});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initInfo = ref.watch(initInfoFutureProvider);

    return initInfo.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) {
        //print('Error during initialization: $err');
        return Text('Error: $err, $stack');
      },
      data: (config) {
        return ProviderScope(
          overrides: [
            initInfoProvider.overrideWithValue(config),
          ],
          child: MaterialApp(
            title: 'Weather App',
            theme: getThemeData(ref.watch(brightness)),
            initialRoute: initialRoute,
            routes: {
              '/week': (_) => const WeekPage(),
              '/day': (_) => const DayPage(),
              '/map': (_) => const MapPage(),
            },
          ),
        );
      },
    );
  }
}
