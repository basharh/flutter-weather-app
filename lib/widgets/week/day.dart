import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/widgets/common/temperature_text.dart';
import 'package:weather/widgets/common/weather_icon.dart';

class DayAndDate extends StatelessWidget {
  final String date;

  const DayAndDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    final d = DateTime.parse(date);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            child: Center(
              child: Text(
                '${DateFormat('EEEE').format(d)}, ${DateFormat('MMM d').format(d)}',
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A widget that displays the daily weather in a row
class DailyWeather extends StatelessWidget {
  final String day;
  final DailyData dailyData;

  const DailyWeather({
    super.key,
    required this.day,
    required this.dailyData,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime d = DateTime.parse(day);

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(3),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: DayAndDate(
              date: DateFormat('yyyy-MM-dd').format(d),
            ),
          ),
          Expanded(
            flex: 2,
            child:
                TemperatureText(temperature: dailyData.temperature_2m_min ?? 0),
          ),
          Expanded(
            flex: 1,
            child: WeatherIcon(
              weatherCode: dailyData.weather_code ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}
