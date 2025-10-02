import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class SearchNearbyResponse with _$SearchNearbyResponse {
  factory SearchNearbyResponse({
    List<Place>? places,
  }) = _SearchNearbyResponse;

  factory SearchNearbyResponse.fromJson(Map<String, Object?> json) =>
      _$SearchNearbyResponseFromJson(json);
}

@freezed
class Place with _$Place {
  factory Place({
    PlaceLocation? location,
    DisplayName? displayNames,
  }) = _Place;

  factory Place.fromJson(Map<String, Object?> json) => _$PlaceFromJson(json);
}

@freezed
class PlaceLocation with _$PlaceLocation {
  factory PlaceLocation({
    double? latitude,
    double? longitude,
  }) = _PlaceLocation;

  factory PlaceLocation.fromJson(Map<String, Object?> json) =>
      _$PlaceLocationFromJson(json);
}

@freezed
class DisplayName with _$DisplayName {
  factory DisplayName({
    String? text,
    String? languageCode,
  }) = _DisplayName;

  factory DisplayName.fromJson(Map<String, Object?> json) =>
      _$DisplayNameFromJson(json);
}
