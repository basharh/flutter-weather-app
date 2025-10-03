import 'package:flutter/material.dart';
import 'package:weather/services/google_places/data.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/temperature_text.dart';
import 'package:weather/widgets/common/weather_icon.dart';
import 'package:weather/widgets/map/bubble.dart';

class WeatherBubble extends StatelessWidget {
  final Place place;
  final CurrentWeather weather;

  const WeatherBubble({
    super.key,
    required this.place,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Bubble(
      child: Column(
        spacing: 4.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(place.displayNames?.text ?? 'Unknown'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              WeatherIcon(weatherCode: weather.weather_code!),
              TemperatureText(temperature: weather.temperature_2m!),
            ],
          ),
        ],
      ),
    );
  }
}
