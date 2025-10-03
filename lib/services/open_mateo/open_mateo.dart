import 'package:dio/dio.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/services/open_mateo/open_mateo_url.dart';

class OpenMateoService {
  final Dio dio;
  final openMateoUrlBuilder = OpenMateoUrlBuilder();

  OpenMateoService(this.dio);

  Future<Map<String, HourlyData>> fetchHourly() async {
    final response = await dio.get(openMateoUrlBuilder.getHourlyDataUrl());
    final data = HourlyForecastResponse.fromJson(response.data);

    final result = <String, HourlyData>{};

    for (var i = 0; i < data.hourly!.time!.length; i++) {
      result[data.hourly!.time![i]] = HourlyData(
        time: data.hourly!.time![i],
        temperature_2m: data.hourly!.temperature_2m?[i] ?? 0,
        weather_code: data.hourly!.weather_code?[i] ?? 0,
      );
    }

    return result;
  }

  Future<Map<String, DailyData>> fetchDaily() async {
    final response = await dio.get(openMateoUrlBuilder.getDailyDataUrl());

    final data = DailyForecastResponse.fromJson(response.data);

    final result = <String, DailyData>{};

    for (var i = 0; i < data.daily!.time!.length; i++) {
      result[data.daily!.time![i]] = DailyData(
        time: data.daily!.time![i],
        temperature_2m_min: data.daily!.temperature_2m_min?[i] ?? 0,
        temperature_2m_max: data.daily!.temperature_2m_max?[i] ?? 0,
        weather_code: data.daily!.weather_code?[i] ?? 0,
      );
    }

    return result;
  }

  Future<CurrentWeather?> fetchWeatherAtLocation(
    double latitude,
    double longitude,
  ) async {
    final response = await dio.get(openMateoUrlBuilder.getWeatherAtLocationUrl(
      latitude,
      longitude,
    ));

    final data = WeatherAtLocationResponse.fromJson(response.data);

    return data.current;
  }
}
