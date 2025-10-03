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
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Theme.of(context).colorScheme.onPrimary,
              displayColor: Theme.of(context).colorScheme.onPrimary,
            ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      child: Builder(builder: (context) {
        return Bubble(
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            spacing: 4.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                place.displayName?.text ?? 'Unknown',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WeatherIcon(weatherCode: weather.weather_code!),
                  TemperatureText(
                      temperature: weather.temperature_2m!,
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
