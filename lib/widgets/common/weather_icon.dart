import 'package:flutter/material.dart';

enum WeatherCondition {
  thunderstorm,
  drizzle,
  rain,
  snow,
  clear,
}

class WeatherIcon extends StatelessWidget {
  final WeatherCondition condition;

  const WeatherIcon({
    super.key,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Icon(
        switch (condition) {
          WeatherCondition.thunderstorm => Icons.flash_on,
          WeatherCondition.drizzle => Icons.grain,
          WeatherCondition.rain => Icons.beach_access,
          WeatherCondition.snow => Icons.ac_unit,
          WeatherCondition.clear => Icons.wb_sunny,
        },
      ),
    );
  }
}
