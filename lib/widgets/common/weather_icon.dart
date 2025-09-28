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
  final Color? color;

  const WeatherIcon({
    super.key,
    required this.weatherCode,
    this.fontSize = 20,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      switch (weatherCode) {
        3 => Icons.wb_cloudy_outlined,
        >= 0 && < 20 => Icons.wb_sunny_outlined, // clear
        >= 20 && < 30 => Icons.snowing, // drizzle
        >= 30 && < 40 => Icons.air_outlined,
        >= 40 && < 50 => Icons.foggy, // fog or ice fog
        >= 50 && < 60 => Icons.grain_outlined, // drizzle
        >= 60 && < 70 => Icons.thunderstorm_outlined, // rain
        >= 70 && < 80 => Icons.wb_sunny_outlined, // clear
        >= 80 && < 100 => Icons.thunderstorm_outlined,
        _ => Icons.grain,
      },
      size: fontSize,
      color: color,
    );
  }
}
