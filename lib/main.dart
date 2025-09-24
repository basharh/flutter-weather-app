import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/pages/chart.dart';

import 'package:weather/pages/day.dart';
import 'package:weather/pages/week.dart';
import 'package:weather/utils/theme_data.dart';

void main() {
  runApp(
    const ProviderScope(
      child: WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  final String initialRoute;

  const WeatherApp({super.key, this.initialRoute = '/day'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: themeData,
      initialRoute: initialRoute,
      routes: {
        '/week': (_) => const WeekPage(),
        '/day': (_) => const DayPage(),
        '/chart': (_) => const ChartPage(),
      },
    );
  }
}
