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
          (index) => HourlyWeather(index: index),
        ),
      ),
    );
  }
}

class DaysColumn extends StatelessWidget {
  const DaysColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: List.generate(
          7,
          (index) => const Expanded(
            child: DailyWeather(),
          ),
        ),
      ),
    );
  }
}

class WeekPage extends StatelessWidget {
  const WeekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      title: 'Weekly Forecast',
      child: Column(
        children: <Widget>[
          HoursRow(),
          DaysColumn(),
        ],
      ),
    );
  }
}
