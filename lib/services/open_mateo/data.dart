import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

/// Data representation for the the api responses from open mateo

@freezed
class HourlyData with _$HourlyData {
  factory HourlyData({
    List<String>? time,
    List<double>? temperature_2m,
  }) = _HourlyData;

  factory HourlyData.fromJson(Map<String, Object?> json) =>
      _$HourlyDataFromJson(json);
}

@freezed
class DailyData with _$DailyData {
  factory DailyData({
    List<String>? time,
    List<double>? temperature_2m_min,
    List<double>? temperature_2m_max,
    List<String>? weather_code,
  }) = _DailyData;

  factory DailyData.fromJson(Map<String, Object?> json) =>
      _$DailyDataFromJson(json);
}

@freezed
class HourlyForecastResponse with _$HourlyForecastResponse {
  factory HourlyForecastResponse({
    HourlyData? hourly,
  }) = _HourlyForecastResponse;

  factory HourlyForecastResponse.fromJson(Map<String, Object?> json) =>
      _$HourlyForecastResponseFromJson(json);
}

@freezed
class DailyForecastResponse with _$DailyForecastResponse {
  factory DailyForecastResponse({
    DailyData? hourly,
  }) = _DailyForecastResponse;

  factory DailyForecastResponse.fromJson(Map<String, Object?> json) =>
      _$DailyForecastResponseFromJson(json);
}
