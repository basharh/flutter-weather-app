import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/chart/weekly_weather_chart.dart';
import 'package:weather/widgets/common/layout/layout.dart';

class ChartPage extends ConsumerWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openMateoService = ref.read(openMateoServiceProvider);

    return Layout(
      child: FutureBuilder(
        future: openMateoService.fetchDaily(),
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

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: WeeklyWeatherChart(
                  dailyData: snapshot.data as Map<String, DailyData>,
                ),
              ),
              Expanded(child: Container()),
            ],
          );
        },
      ),
    );
  }
}
