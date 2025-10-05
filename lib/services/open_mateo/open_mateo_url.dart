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

  String getHourlyDataUrl({
    required double latitude,
    required double longitude,
    required String timezone,
  }) {
    final (start, end) = _getTodayTimeRange();
    return uri.replace(
      queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'hourly': 'temperature_2m,weather_code',
        'start_hour': start,
        'end_hour': end,
        'timezone': timezone,
      },
    ).toString();
  }

  String getDailyDataUrl({
    required double latitude,
    required double longitude,
    required String timezone,
  }) {
    final (start, end) = _getWeekDateRange();
    return uri.replace(
      queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'daily': 'temperature_2m_min,temperature_2m_max,weather_code',
        'start_date': start,
        'end_date': end,
        'timezone': timezone,
      },
    ).toString();
  }

  String getWeatherAtLocationUrl({
    required double latitude,
    required double longitude,
  }) {
    return uri.replace(
      queryParameters: {
        'latitude': latitude.toString(),
        'longitude': longitude.toString(),
        'current': 'temperature_2m,weather_code',
      },
    ).toString();
  }
}
