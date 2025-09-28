import 'package:flutter/material.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/temperature_text.dart';
import 'package:weather/widgets/common/time.dart';
import 'package:weather/widgets/common/weather_icon.dart';

/// A widget that displays the weather for a specific hour.
class HourWeather extends StatelessWidget {
  final String hour;
  final HourlyData hourlyData;

  const HourWeather({
    super.key,
    required this.hour,
    required this.hourlyData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TimeText(
              time: hour.substring(11),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: WeatherIcon(
                weatherCode: hourlyData.weather_code ?? 0,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            TemperatureText(
              temperature: hourlyData.temperature_2m ?? 0,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
