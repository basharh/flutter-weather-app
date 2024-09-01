import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/services/open_mateo.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/layout/layout.dart';
import 'package:weather/widgets/week/days_column.dart';
import 'package:weather/widgets/week/hours_row.dart';

class WeekPage extends ConsumerWidget {
  const WeekPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openMateoService = ref.read(openMateoServiceProvider);

    return Layout(
      title: 'Weekly Forecast',
      child: FutureBuilder(
        future: Future.wait([
          openMateoService.fetchHourly(),
          openMateoService.fetchDaily(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('An error occurred'),
            );
          }

          return Column(
            children: <Widget>[
              HoursRow(
                hourlyData: snapshot.data?[0] as Map<String, HourlyData>,
              ),
              DaysColumn(
                dailyData: snapshot.data?[1] as Map<String, DailyData>,
              ),
            ],
          );
        },
      ),
    );
  }
}
