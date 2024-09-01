// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyDataResponseImpl _$$HourlyDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HourlyDataResponseImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature_2m: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      weather_code: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$HourlyDataResponseImplToJson(
        _$HourlyDataResponseImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature_2m,
      'weather_code': instance.weather_code,
    };

_$DailyDataResponseImpl _$$DailyDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyDataResponseImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature_2m_min: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      temperature_2m_max: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      weather_code: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$DailyDataResponseImplToJson(
        _$DailyDataResponseImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_min': instance.temperature_2m_min,
      'temperature_2m_max': instance.temperature_2m_max,
      'weather_code': instance.weather_code,
    };

_$HourlyForecastResponseImpl _$$HourlyForecastResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HourlyForecastResponseImpl(
      hourly: json['hourly'] == null
          ? null
          : HourlyDataResponse.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourlyForecastResponseImplToJson(
        _$HourlyForecastResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };

_$DailyForecastResponseImpl _$$DailyForecastResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyForecastResponseImpl(
      daily: json['daily'] == null
          ? null
          : DailyDataResponse.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyForecastResponseImplToJson(
        _$DailyForecastResponseImpl instance) =>
    <String, dynamic>{
      'daily': instance.daily,
    };
