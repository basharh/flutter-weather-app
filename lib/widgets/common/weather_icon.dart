import 'package:flutter/material.dart';

enum WeatherCondition {
  thunderstorm,
  drizzle,
  rain,
  snow,
  clear,
}

class WeatherIcon extends StatelessWidget {
  final int weatherCode;
  final double fontSize;

  const WeatherIcon({
    super.key,
    required this.weatherCode,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      switch (weatherCode) {
        3 => Icons.wb_cloudy,
        >= 0 && < 20 => Icons.wb_sunny, // clear
        >= 20 && < 30 => Icons.snowing, // drizzle
        >= 30 && < 40 => Icons.air,
        >= 40 && < 50 => Icons.foggy, // fog or ice fog
        >= 50 && < 60 => Icons.grain, // drizzle
        >= 60 && < 70 => Icons.thunderstorm, // rain
        >= 70 && < 80 => Icons.wb_sunny, // clear
        >= 80 && < 100 => Icons.thunderstorm,
        _ => Icons.grain,
      },
      size: fontSize,
    );
  }
}
