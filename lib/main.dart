import 'package:flutter/material.dart';
import 'package:weather/pages/day.dart';
import 'package:weather/pages/week.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/week',
      routes: {
        '/week': (_) => const WeekPage(),
        '/day': (_) => const DayPage(),
      },
    );
  }
}
