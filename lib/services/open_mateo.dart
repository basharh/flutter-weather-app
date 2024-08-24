import 'package:freezed_annotation/freezed_annotation.dart';

// fetches forecast data from https://open-meteo.com/en/docs#hourly=temperature_2m

part 'open_mateo.freezed.dart';
part 'open_mateo.g.dart';

@freezed
class ForecastResponse with _$ForecastResponse {
  factory ForecastResponse({String? a, int? b}) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, Object?> json) =>
      _$ForecastResponseFromJson(json);
}

class OpenMateoService {
  fetch() {
    return 'Mateo';
  }
}
