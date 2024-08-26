// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_mateo.dart';

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

_$ForecastResponseImpl _$$ForecastResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastResponseImpl(
      hourly: json['hourly'] == null
          ? null
          : HourlyData.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastResponseImplToJson(
        _$ForecastResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };
