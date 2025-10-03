import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

/// Data representation for the the api responses from open mateo

/// temperature data for a single hour
@freezed
class HourlyData with _$HourlyData {
  factory HourlyData({
    String? time,
    double? temperature_2m,
    int? weather_code,
  }) = _HourlyData;
}

/// temperature data for a single day
@freezed
class DailyData with _$DailyData {
  factory DailyData({
    String? time,
    double? temperature_2m_min,
    double? temperature_2m_max,
    int? weather_code,
  }) = _DailyData;
}

@freezed
class HourlyDataResponse with _$HourlyDataResponse {
  factory HourlyDataResponse({
    List<String>? time,
    List<double>? temperature_2m,
    List<int>? weather_code,
  }) = _HourlyDataResponse;

  factory HourlyDataResponse.fromJson(Map<String, Object?> json) =>
      _$HourlyDataResponseFromJson(json);
}

@freezed
class DailyDataResponse with _$DailyDataResponse {
  factory DailyDataResponse({
    List<String>? time,
    List<double>? temperature_2m_min,
    List<double>? temperature_2m_max,
    List<int>? weather_code,
  }) = _DailyDataResponse;

  factory DailyDataResponse.fromJson(Map<String, Object?> json) =>
      _$DailyDataResponseFromJson(json);
}

@freezed
class HourlyForecastResponse with _$HourlyForecastResponse {
  factory HourlyForecastResponse({
    HourlyDataResponse? hourly,
  }) = _HourlyForecastResponse;

  factory HourlyForecastResponse.fromJson(Map<String, Object?> json) =>
      _$HourlyForecastResponseFromJson(json);
}

@freezed
class DailyForecastResponse with _$DailyForecastResponse {
  factory DailyForecastResponse({
    DailyDataResponse? daily,
  }) = _DailyForecastResponse;

  factory DailyForecastResponse.fromJson(Map<String, Object?> json) =>
      _$DailyForecastResponseFromJson(json);
}

@freezed
class WeatherAtLocationResponse with _$WeatherAtLocationResponse {
  factory WeatherAtLocationResponse({
    double? latitude,
    double? longitude,
    CurrentWeather? current,
  }) = _WeatherAtLocationResponse;

  factory WeatherAtLocationResponse.fromJson(Map<String, Object?> json) =>
      _$WeatherAtLocationResponseFromJson(json);
}

@freezed
class CurrentWeather with _$CurrentWeather {
  factory CurrentWeather({
    double? temperature_2m,
    int? weather_code,
    String? time,
  }) = _CurrentWeather;
  factory CurrentWeather.fromJson(Map<String, Object?> json) =>
      _$CurrentWeatherFromJson(json);
}
