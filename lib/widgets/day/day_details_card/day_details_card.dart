import 'package:flutter/material.dart';

class DayDetailsCard extends StatelessWidget {
  const DayDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Theme(
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const _Location(),
                      Text(
                        'Today 00:32 PM',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                  const Expanded(child: _CurrentTemperature()),
                  const _WeatherConditionsRow(),
                  const SizedBox(height: 16.0),
                  const _DayWeatherChartCard(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 4.0,
            children: [
              const Icon(Icons.cloud_outlined, size: 10),
              Text(
                '1013hPa',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Row(
            spacing: 4.0,
            children: [
              const Icon(Icons.water_drop_outlined, size: 10),
              Text('50%', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          Row(
            spacing: 4.0,
            children: [
              const Icon(Icons.air_outlined, size: 10),
              Text('5 km/h', style: Theme.of(context).textTheme.bodySmall),
            ],
          )
        ],
      ),
    );
  }
}

class _Location extends StatelessWidget {
  const _Location();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2.0,
      children: [
        Icon(
          Icons.place_outlined,
          size: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
        Text('Gotham', style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

/// A card that displays the weather chart for the day
class _DayWeatherChartCard extends StatelessWidget {
  const _DayWeatherChartCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Temperature', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 100, child: Placeholder()),
        ],
      ),
    );
  }
}
