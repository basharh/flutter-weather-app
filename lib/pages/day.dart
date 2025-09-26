import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/chart/hourly_weather_chart.dart';
import 'package:weather/widgets/common/hours_row.dart';
import 'package:weather/widgets/common/layout/layout.dart';

class DayPage extends ConsumerWidget {
  const DayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openMateoService = ref.read(openMateoServiceProvider);

    return Layout(
      title: 'Day at a Glance',
      child: FutureBuilder(
        future: openMateoService.fetchHourly(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred'),
            );
          }

          final hourlyData = snapshot.data as Map<String, HourlyData>;

          return Column(
            children: <Widget>[
              HoursRow(hourlyData: hourlyData),
              const SizedBox(height: 20),
              //Details(),
              //SizedBox(height: 20),
              Expanded(
                child: FractionallySizedBox(
                  heightFactor: 0.6,
                  child: HourlyWeatherChart(hourlyData: hourlyData),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
