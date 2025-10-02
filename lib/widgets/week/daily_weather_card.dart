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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          DateFormat('EEEE').format(d),
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          DateFormat('d MMM').format(d),
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

/// A widget that displays the daily weather in a card
class DailyWeatherCard extends StatelessWidget {
  final String day;
  final DailyData dailyData;

  const DailyWeatherCard({
    super.key,
    required this.day,
    required this.dailyData,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime d = DateTime.parse(day);

    return Card(
      color: Theme.of(context).colorScheme.secondaryContainer,
      margin: const EdgeInsets.all(3),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: DayAndDate(
                date: DateFormat('yyyy-MM-dd').format(d),
              ),
            ),
            Expanded(
              flex: 2,
              child: TemperatureText(
                temperature: dailyData.temperature_2m_min ?? 0,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Expanded(
              flex: 1,
              child: WeatherIcon(
                weatherCode: dailyData.weather_code ?? 0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
