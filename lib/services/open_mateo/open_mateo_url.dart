import 'package:intl/intl.dart';

(String, String) _getTodayTimeRange() {
  final now = DateTime.now();
  final d = DateTime(now.year, now.month, now.day, 0, 0, 0);
  final df = DateFormat('yyyy-MM-dd');
  return ('${df.format(d)}T00:00', '${df.format(d)}T23:00');
}

(String, String) _getWeekDateRange() {
  final now = DateTime.now();
  final start = DateTime(now.year, now.month, now.day, 0, 0, 0);
  final df = DateFormat('yyyy-MM-dd');
  return (
    df.format(start),
    df.format(start.add(const Duration(days: 6))),
  );
}

class OpenMateoUrlBuilder {
  static final Uri uri = Uri(
    scheme: 'https',
    host: 'api.open-meteo.com',
    path: '/v1/forecast',
  );

  String getHourlyDataUrl() {
    final (start, end) = _getTodayTimeRange();
    return uri.replace(
      queryParameters: {
        'latitude': '40.66',
        'longitude': '-73.95742972837749',
        'hourly': 'temperature_2m,weather_code',
        'start_hour': start,
        'end_hour': end,
      },
    ).toString();
  }

  String getDailyDataUrl() {
    final (start, end) = _getWeekDateRange();
    return uri.replace(
      queryParameters: {
        'latitude': '52.52',
        'longitude': '13.41',
        'daily': 'temperature_2m_min,temperature_2m_max,weather_code',
        'start_date': start,
        'end_date': end,
      },
    ).toString();
  }
}
