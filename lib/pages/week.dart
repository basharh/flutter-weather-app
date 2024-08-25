import 'package:flutter/material.dart';
import 'package:weather/widgets/common/hourly_weather/hourly_weather.dart';
import 'package:weather/widgets/common/layout/layout.dart';
import 'package:weather/widgets/week/day.dart';

class HoursRow extends StatelessWidget {
  const HoursRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          24,
          (index) => HourlyWeather(),
        ),
      ),
    );
  }
}

class DaysColumn extends StatelessWidget {
  const DaysColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(
          7,
          (index) => const DailyWeather(),
        ),
      ),
    );
  }
}

class WeekPage extends StatelessWidget {
  const WeekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: 'Weekly Forecast',
      child: Container(
        child: const Column(
          children: <Widget>[
            HoursRow(),
            DaysColumn(),
          ],
        ),
      ),
    );
  }
}
