import 'dart:math';

import 'package:weather/services/open_mateo/data.dart';

Map<String, HourlyData> getDummyHourlyData() {
  // Create hourly data for 24 hours
  Map<String, HourlyData> hourlyData = {};

  var start = DateTime.parse('2024-10-10T00:00');

  for (int i = 0; i < 24; i++) {
    var time = start.add(Duration(hours: i));
    var timeString = time.toIso8601String().substring(0, 16);
    hourlyData[timeString] = HourlyData(
      weather_code: (i % 12) * 10, // Just a sample pattern for weather codes
      time: timeString,
      temperature_2m: 15.0 + i, // Sample temperature increasing over the day
    );
  }

  return hourlyData;
}

Map<String, DailyData> getDummyDailyData() {
  // Create daily data for 7 days
  Map<String, DailyData> dailyData = {};

  var start = DateTime.parse('2024-10-10');

  for (int i = 0; i < 7; i++) {
    var time = start.add(Duration(days: i));
    var timeString = time.toIso8601String().substring(0, 10);
    dailyData[timeString] = DailyData(
      weather_code: (Random().nextInt(100)),
      time: timeString,
      temperature_2m_min: 10.0 + i, // Sample min temperature
      temperature_2m_max: 20.0 + i, // Sample max temperature
    );
  }

  return dailyData;
}
