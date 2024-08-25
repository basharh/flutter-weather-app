import 'package:flutter/material.dart';
import 'package:weather/widgets/common/temperature_text.dart';
import 'package:weather/widgets/common/weather_icon.dart';

class DayAndDate extends StatelessWidget {
  final String day;
  final String date;

  const DayAndDate({super.key, required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Monday'),
          Text('June 1'),
        ],
      ),
    );
  }
}

/// A widget that displays the daily weather in a row
class DailyWeather extends StatelessWidget {
  const DailyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(3),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const DayAndDate(day: 'Monday', date: 'June 1'),
          const TemperatureText(temperature: 75),
          WeatherIcon(condition: WeatherCondition.thunderstorm),
        ],
      ),
    );
  }
}
