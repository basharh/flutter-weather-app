import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/services/open_mateo/data.dart';

class HourlyWeatherChart extends StatelessWidget {
  final Map<String, HourlyData> hourlyData;

  const HourlyWeatherChart({
    super.key,
    required this.hourlyData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(
        getChartData(context),
      ),
    );
  }

  LineChartData getChartData(BuildContext context) => LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: titlesData,
        borderData: borderData,
        lineBarsData: getLineBarsData(context),
        minX: 0,
        maxX: 24,
        maxY: 40,
        minY: 0,
      );

  List<LineChartBarData> getLineBarsData(BuildContext context) => [
        getLineChartBarData(context),
      ];

  List<FlSpot> get spots {
    final days = hourlyData.keys.toList();
    return days.map((day) {
      return FlSpot(
        days.indexOf(day).toDouble(),
        hourlyData[day]!.temperature_2m ?? 0,
      );
    }).toList();
  }

  LineChartBarData getLineChartBarData(BuildContext context) {
    return LineChartBarData(
      isCurved: true,
      color: Theme.of(context).colorScheme.onPrimary,
      barWidth: 2,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: spots,
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 4,
        getTitlesWidget: bottomTitleWidgets,
      );

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 10,
        reservedSize: 30,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 12,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '${value.toInt()}°',
        style: style,
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final start = DateTime.parse(hourlyData.keys.first);

    const style = TextStyle(
      fontSize: 12,
    );

    Widget text = Text(
      DateFormat('H:mm').format(
        start.add(Duration(hours: value.toInt())),
      ),
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 3,
          ),
          // left: BorderSide(color: Colors.grey, width: 2),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );
}
