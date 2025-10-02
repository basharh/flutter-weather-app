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
      displayNames: json['displayNames'] == null
          ? null
          : DisplayName.fromJson(json['displayNames'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'displayNames': instance.displayNames,
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
