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

_$WeatherAtLocationResponseImpl _$$WeatherAtLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherAtLocationResponseImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      current: json['current'] == null
          ? null
          : CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherAtLocationResponseImplToJson(
        _$WeatherAtLocationResponseImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
    };

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      temperature_2m: (json['temperature_2m'] as num?)?.toDouble(),
      weather_code: (json['weather_code'] as num?)?.toInt(),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature_2m,
      'weather_code': instance.weather_code,
      'time': instance.time,
    };
