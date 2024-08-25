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
      child: Column(
        children: <Widget>[
          const DayAndDate(day: 'Monday', date: 'June 1'),
          const TemperatureText(temperature: 75),
          WeatherIcon(condition: WeatherCondition.thunderstorm),
        ],
      ),
    );
  }
}
