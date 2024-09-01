import 'package:flutter/material.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/hourly_weather/hourly_weather.dart';

class HoursRow extends StatelessWidget {
  final Map<String, HourlyData> hourlyData;

  const HoursRow({super.key, required this.hourlyData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: hourlyData.entries
            .map(
              (entry) => HourlyWeather(
                hour: entry.key,
                hourlyData: entry.value,
              ),
            )
            .toList(),
      ),
    );
  }
}
