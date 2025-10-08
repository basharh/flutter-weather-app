import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/chart/hourly_weather_chart.dart';

class DayDetailsCard extends StatelessWidget {
  final String localityName;
  final Map<String, HourlyData> hourlyData;

  const DayDetailsCard({
    super.key,
    required this.hourlyData,
    required this.localityName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      child: Theme(
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Theme.of(context).colorScheme.onSecondary,
                displayColor: Theme.of(context).colorScheme.onSecondary,
              ),
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _Location(localityName: localityName),
                      Text(
                        'Today ${DateFormat('h:mm a').format(clock.now())}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  const Expanded(child: _CurrentTemperature()),
                  const _WeatherConditionsRow(),
                  const SizedBox(height: 16.0),
                  _DayWeatherChartCard(
                    hourlyData: hourlyData,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CurrentTemperature extends StatelessWidget {
  const _CurrentTemperature();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: FittedBox(
        child: Row(
          children: [
            Text(
              '32',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '°',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _WeatherConditionsRow extends StatelessWidget {
  const _WeatherConditionsRow();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: Theme.of(context).iconTheme.copyWith(
              size: Theme.of(context).textTheme.titleLarge?.fontSize,
            ),
      ),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 4.0,
                children: [
                  Icon(Icons.cloud_outlined),
                  Text(
                    '1013hPa',
                  ),
                ],
              ),
              Row(
                spacing: 4.0,
                children: [
                  Icon(Icons.water_drop_outlined),
                  Text(
                    '50%',
                  ),
                ],
              ),
              Row(
                spacing: 4.0,
                children: [
                  Icon(Icons.air_outlined),
                  Text(
                    '5 km/h',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Location extends StatelessWidget {
  final String localityName;

  const _Location({required this.localityName});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2.0,
      children: [
        Icon(
          Icons.place_outlined,
          size: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
        Text(
          localityName,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

/// A card that displays the weather chart for the day
class _DayWeatherChartCard extends StatelessWidget {
  final Map<String, HourlyData> hourlyData;

  const _DayWeatherChartCard({
    required this.hourlyData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Temperature', style: Theme.of(context).textTheme.titleMedium),
            AspectRatio(
              aspectRatio: 2,
              child: HourlyWeatherChart(hourlyData: hourlyData),
            )
          ],
        ),
      ),
    );
  }
}
