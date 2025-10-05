import 'package:dio/dio.dart';
import 'package:weather/services/open_mateo/data.dart';
import 'package:weather/services/open_mateo/open_mateo_url.dart';

class OpenMateoService {
  final Dio dio;
  final openMateoUrlBuilder = OpenMateoUrlBuilder();

  OpenMateoService(this.dio);

  Future<Map<String, HourlyData>> fetchHourly({
    required double latitude,
    required double longitude,
    required String timezone,
  }) async {
    final response = await dio.get(
      openMateoUrlBuilder.getHourlyDataUrl(
        latitude: latitude,
        longitude: longitude,
        timezone: timezone,
      ),
    );

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

  Future<Map<String, DailyData>> fetchDaily({
    required double latitude,
    required double longitude,
    required String timezone,
  }) async {
    final response = await dio.get(
      openMateoUrlBuilder.getDailyDataUrl(
        latitude: latitude,
        longitude: longitude,
        timezone: timezone,
      ),
    );

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

  Future<CurrentWeather?> fetchWeatherAtLocation({
    required double latitude,
    required double longitude,
  }) async {
    final response = await dio.get(openMateoUrlBuilder.getWeatherAtLocationUrl(
      latitude: latitude,
      longitude: longitude,
    ));

    final data = WeatherAtLocationResponse.fromJson(response.data);

    return data.current;
  }
}
