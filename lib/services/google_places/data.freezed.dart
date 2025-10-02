// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchNearbyResponse _$SearchNearbyResponseFromJson(Map<String, dynamic> json) {
  return _SearchNearbyResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchNearbyResponse {
  List<Place>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchNearbyResponseCopyWith<SearchNearbyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNearbyResponseCopyWith<$Res> {
  factory $SearchNearbyResponseCopyWith(SearchNearbyResponse value,
          $Res Function(SearchNearbyResponse) then) =
      _$SearchNearbyResponseCopyWithImpl<$Res, SearchNearbyResponse>;
  @useResult
  $Res call({List<Place>? places});
}

/// @nodoc
class _$SearchNearbyResponseCopyWithImpl<$Res,
        $Val extends SearchNearbyResponse>
    implements $SearchNearbyResponseCopyWith<$Res> {
  _$SearchNearbyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchNearbyResponseImplCopyWith<$Res>
    implements $SearchNearbyResponseCopyWith<$Res> {
  factory _$$SearchNearbyResponseImplCopyWith(_$SearchNearbyResponseImpl value,
          $Res Function(_$SearchNearbyResponseImpl) then) =
      __$$SearchNearbyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place>? places});
}

/// @nodoc
class __$$SearchNearbyResponseImplCopyWithImpl<$Res>
    extends _$SearchNearbyResponseCopyWithImpl<$Res, _$SearchNearbyResponseImpl>
    implements _$$SearchNearbyResponseImplCopyWith<$Res> {
  __$$SearchNearbyResponseImplCopyWithImpl(_$SearchNearbyResponseImpl _value,
      $Res Function(_$SearchNearbyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$SearchNearbyResponseImpl(
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchNearbyResponseImpl implements _SearchNearbyResponse {
  _$SearchNearbyResponseImpl({final List<Place>? places}) : _places = places;

  factory _$SearchNearbyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchNearbyResponseImplFromJson(json);

  final List<Place>? _places;
  @override
  List<Place>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchNearbyResponse(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNearbyResponseImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNearbyResponseImplCopyWith<_$SearchNearbyResponseImpl>
      get copyWith =>
          __$$SearchNearbyResponseImplCopyWithImpl<_$SearchNearbyResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchNearbyResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchNearbyResponse implements SearchNearbyResponse {
  factory _SearchNearbyResponse({final List<Place>? places}) =
      _$SearchNearbyResponseImpl;

  factory _SearchNearbyResponse.fromJson(Map<String, dynamic> json) =
      _$SearchNearbyResponseImpl.fromJson;

  @override
  List<Place>? get places;
  @override
  @JsonKey(ignore: true)
  _$$SearchNearbyResponseImplCopyWith<_$SearchNearbyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  PlaceLocation? get location => throw _privateConstructorUsedError;
  DisplayName? get displayNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call({PlaceLocation? location, DisplayName? displayNames});

  $PlaceLocationCopyWith<$Res>? get location;
  $DisplayNameCopyWith<$Res>? get displayNames;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? displayNames = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation?,
      displayNames: freezed == displayNames
          ? _value.displayNames
          : displayNames // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $PlaceLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DisplayNameCopyWith<$Res>? get displayNames {
    if (_value.displayNames == null) {
      return null;
    }

    return $DisplayNameCopyWith<$Res>(_value.displayNames!, (value) {
      return _then(_value.copyWith(displayNames: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceLocation? location, DisplayName? displayNames});

  @override
  $PlaceLocationCopyWith<$Res>? get location;
  @override
  $DisplayNameCopyWith<$Res>? get displayNames;
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? displayNames = freezed,
  }) {
    return _then(_$PlaceImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceLocation?,
      displayNames: freezed == displayNames
          ? _value.displayNames
          : displayNames // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  _$PlaceImpl({this.location, this.displayNames});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final PlaceLocation? location;
  @override
  final DisplayName? displayNames;

  @override
  String toString() {
    return 'Place(location: $location, displayNames: $displayNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.displayNames, displayNames) ||
                other.displayNames == displayNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, displayNames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  factory _Place(
      {final PlaceLocation? location,
      final DisplayName? displayNames}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  PlaceLocation? get location;
  @override
  DisplayName? get displayNames;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceLocation _$PlaceLocationFromJson(Map<String, dynamic> json) {
  return _PlaceLocation.fromJson(json);
}

/// @nodoc
mixin _$PlaceLocation {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceLocationCopyWith<PlaceLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLocationCopyWith<$Res> {
  factory $PlaceLocationCopyWith(
          PlaceLocation value, $Res Function(PlaceLocation) then) =
      _$PlaceLocationCopyWithImpl<$Res, PlaceLocation>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$PlaceLocationCopyWithImpl<$Res, $Val extends PlaceLocation>
    implements $PlaceLocationCopyWith<$Res> {
  _$PlaceLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceLocationImplCopyWith<$Res>
    implements $PlaceLocationCopyWith<$Res> {
  factory _$$PlaceLocationImplCopyWith(
          _$PlaceLocationImpl value, $Res Function(_$PlaceLocationImpl) then) =
      __$$PlaceLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$PlaceLocationImplCopyWithImpl<$Res>
    extends _$PlaceLocationCopyWithImpl<$Res, _$PlaceLocationImpl>
    implements _$$PlaceLocationImplCopyWith<$Res> {
  __$$PlaceLocationImplCopyWithImpl(
      _$PlaceLocationImpl _value, $Res Function(_$PlaceLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$PlaceLocationImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceLocationImpl implements _PlaceLocation {
  _$PlaceLocationImpl({this.latitude, this.longitude});

  factory _$PlaceLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceLocationImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'PlaceLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceLocationImplCopyWith<_$PlaceLocationImpl> get copyWith =>
      __$$PlaceLocationImplCopyWithImpl<_$PlaceLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceLocationImplToJson(
      this,
    );
  }
}

abstract class _PlaceLocation implements PlaceLocation {
  factory _PlaceLocation({final double? latitude, final double? longitude}) =
      _$PlaceLocationImpl;

  factory _PlaceLocation.fromJson(Map<String, dynamic> json) =
      _$PlaceLocationImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PlaceLocationImplCopyWith<_$PlaceLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayName _$DisplayNameFromJson(Map<String, dynamic> json) {
  return _DisplayName.fromJson(json);
}

/// @nodoc
mixin _$DisplayName {
  String? get text => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayNameCopyWith<DisplayName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayNameCopyWith<$Res> {
  factory $DisplayNameCopyWith(
          DisplayName value, $Res Function(DisplayName) then) =
      _$DisplayNameCopyWithImpl<$Res, DisplayName>;
  @useResult
  $Res call({String? text, String? languageCode});
}

/// @nodoc
class _$DisplayNameCopyWithImpl<$Res, $Val extends DisplayName>
    implements $DisplayNameCopyWith<$Res> {
  _$DisplayNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayNameImplCopyWith<$Res>
    implements $DisplayNameCopyWith<$Res> {
  factory _$$DisplayNameImplCopyWith(
          _$DisplayNameImpl value, $Res Function(_$DisplayNameImpl) then) =
      __$$DisplayNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? languageCode});
}

/// @nodoc
class __$$DisplayNameImplCopyWithImpl<$Res>
    extends _$DisplayNameCopyWithImpl<$Res, _$DisplayNameImpl>
    implements _$$DisplayNameImplCopyWith<$Res> {
  __$$DisplayNameImplCopyWithImpl(
      _$DisplayNameImpl _value, $Res Function(_$DisplayNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_$DisplayNameImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayNameImpl implements _DisplayName {
  _$DisplayNameImpl({this.text, this.languageCode});

  factory _$DisplayNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayNameImplFromJson(json);

  @override
  final String? text;
  @override
  final String? languageCode;

  @override
  String toString() {
    return 'DisplayName(text: $text, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayNameImplCopyWith<_$DisplayNameImpl> get copyWith =>
      __$$DisplayNameImplCopyWithImpl<_$DisplayNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayNameImplToJson(
      this,
    );
  }
}

abstract class _DisplayName implements DisplayName {
  factory _DisplayName({final String? text, final String? languageCode}) =
      _$DisplayNameImpl;

  factory _DisplayName.fromJson(Map<String, dynamic> json) =
      _$DisplayNameImpl.fromJson;

  @override
  String? get text;
  @override
  String? get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$DisplayNameImplCopyWith<_$DisplayNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
