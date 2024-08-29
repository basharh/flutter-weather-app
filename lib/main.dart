import 'package:flutter/material.dart';
import 'package:weather/pages/day.dart';
import 'package:weather/pages/week.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  final String initialRoute;

  const WeatherApp({super.key, this.initialRoute = '/week'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: initialRoute,
      routes: {
        '/week': (_) => const WeekPage(),
        '/day': (_) => const DayPage(),
      },
    );
  }
}
