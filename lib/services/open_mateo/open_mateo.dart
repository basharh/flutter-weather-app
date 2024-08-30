import 'package:dio/dio.dart';
import 'package:weather/services/open_mateo/data.dart';

class OpenMateoService {
  final Dio dio;

  OpenMateoService(this.dio);

  Future<HourlyForecastResponse> fetchHourly() async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m');
    return HourlyForecastResponse.fromJson(response.data);
  }

  Future<DailyForecastResponse> fetchDaily() async {
    final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&daily=temperature_2m_min,temperature_2m_max,weather_code');
    return DailyForecastResponse.fromJson(response.data);
  }
}
