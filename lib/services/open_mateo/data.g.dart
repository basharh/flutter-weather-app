// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyDataImpl _$$HourlyDataImplFromJson(Map<String, dynamic> json) =>
    _$HourlyDataImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature_2m: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$HourlyDataImplToJson(_$HourlyDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature_2m,
    };

_$DailyDataImpl _$$DailyDataImplFromJson(Map<String, dynamic> json) =>
    _$DailyDataImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature_2m_min: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      temperature_2m_max: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      weather_code: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DailyDataImplToJson(_$DailyDataImpl instance) =>
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
          : HourlyData.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourlyForecastResponseImplToJson(
        _$HourlyForecastResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };

_$DailyForecastResponseImpl _$$DailyForecastResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyForecastResponseImpl(
      hourly: json['hourly'] == null
          ? null
          : DailyData.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyForecastResponseImplToJson(
        _$DailyForecastResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };
