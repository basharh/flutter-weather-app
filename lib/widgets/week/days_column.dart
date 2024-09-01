import 'package:flutter/material.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/week/day.dart';

class DaysColumn extends StatelessWidget {
  final Map<String, DailyData> dailyData;

  const DaysColumn({super.key, required this.dailyData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: dailyData.entries
            .map(
              (entry) => Expanded(
                child: DailyWeather(
                  day: entry.key,
                  dailyData: entry.value,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
