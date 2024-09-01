import 'package:flutter/material.dart';
import 'package:weather/widgets/common/hourly_weather/hourly_weather.dart';

class HoursRow extends StatelessWidget {
  const HoursRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: List.generate(
          24,
          (index) => HourlyWeather(index: index),
        ),
      ),
    );
  }
}

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: <Widget>[
          HoursRow(),
        ],
      ),
    );
  }
}
