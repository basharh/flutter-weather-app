// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchNearbyResponseImpl _$$SearchNearbyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchNearbyResponseImpl(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchNearbyResponseImplToJson(
        _$SearchNearbyResponseImpl instance) =>
    <String, dynamic>{
      'places': instance.places,
    };

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      location: json['location'] == null
          ? null
          : PlaceLocation.fromJson(json['location'] as Map<String, dynamic>),
      displayName: json['displayName'] == null
          ? null
          : DisplayName.fromJson(json['displayName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'displayName': instance.displayName,
    };

_$PlaceLocationImpl _$$PlaceLocationImplFromJson(Map<String, dynamic> json) =>
    _$PlaceLocationImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PlaceLocationImplToJson(_$PlaceLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$DisplayNameImpl _$$DisplayNameImplFromJson(Map<String, dynamic> json) =>
    _$DisplayNameImpl(
      text: json['text'] as String?,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$DisplayNameImplToJson(_$DisplayNameImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'languageCode': instance.languageCode,
    };

_$TimeZoneResponseImpl _$$TimeZoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeZoneResponseImpl(
      dstOffset: (json['dstOffset'] as num?)?.toInt(),
      rawOffset: (json['rawOffset'] as num?)?.toInt(),
      status: json['status'] as String?,
      timeZoneId: json['timeZoneId'] as String?,
      timeZoneName: json['timeZoneName'] as String?,
    );

Map<String, dynamic> _$$TimeZoneResponseImplToJson(
        _$TimeZoneResponseImpl instance) =>
    <String, dynamic>{
      'dstOffset': instance.dstOffset,
      'rawOffset': instance.rawOffset,
      'status': instance.status,
      'timeZoneId': instance.timeZoneId,
      'timeZoneName': instance.timeZoneName,
    };
