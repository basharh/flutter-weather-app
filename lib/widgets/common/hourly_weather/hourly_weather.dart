import 'package:flutter/material.dart';
import 'package:weather/widgets/common/temperature_text.dart';
import 'package:weather/widgets/common/time.dart';
import 'package:weather/widgets/common/weather_icon.dart';

/// A widget that displays the hourly weather in a column
class HourlyWeather extends StatelessWidget {
  const HourlyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TimeText(time: '12:00'),
          SizedBox(height: 5),
          Expanded(
            child: WeatherIcon(condition: WeatherCondition.thunderstorm),
          ),
          TemperatureText(temperature: 75),
        ],
      ),
    );
  }
}
