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
