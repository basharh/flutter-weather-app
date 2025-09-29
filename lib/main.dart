import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/pages/chart.dart';

import 'package:weather/pages/day.dart';
import 'package:weather/pages/week.dart';
import 'package:weather/providers/brightness_mode.dart';
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
    return MaterialApp(
      title: 'Weather App',
      theme: getThemeData(ref.watch(brightness)),
      initialRoute: initialRoute,
      routes: {
        '/week': (_) => const WeekPage(),
        '/day': (_) => const DayPage(),
        '/chart': (_) => const ChartPage(),
      },
    );
  }
}
