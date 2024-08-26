import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// fetches forecast data from https://open-meteo.com/en/docs#hourly=temperature_2m

part 'open_mateo.freezed.dart';
part 'open_mateo.g.dart';

/*
"hourly": {
  "time": ["2022-07-01T00:00", "2022-07-01T01:00", "2022-07-01T02:00", ...],
  "temperature_2m": [13, 12.7, 12.7, 12.5, 12.5, 12.8, 13, 12.9, 13.3, ...]
}
*/

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
class ForecastResponse with _$ForecastResponse {
  factory ForecastResponse({
    HourlyData? hourly,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, Object?> json) =>
      _$ForecastResponseFromJson(json);
}

class OpenMateoService {
  final Dio dio;

  OpenMateoService(this.dio);

  Future<ForecastResponse> fetch() async {
    final response =
        await dio.get('https://open-meteo.com/en/docs#hourly=temperature_2m');
    return ForecastResponse.fromJson(response.data);
  }
}
