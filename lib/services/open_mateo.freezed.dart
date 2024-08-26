// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_mateo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyData _$HourlyDataFromJson(Map<String, dynamic> json) {
  return _HourlyData.fromJson(json);
}

/// @nodoc
mixin _$HourlyData {
  List<String>? get time => throw _privateConstructorUsedError;
  List<double>? get temperature_2m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyDataCopyWith<HourlyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyDataCopyWith<$Res> {
  factory $HourlyDataCopyWith(
          HourlyData value, $Res Function(HourlyData) then) =
      _$HourlyDataCopyWithImpl<$Res, HourlyData>;
  @useResult
  $Res call({List<String>? time, List<double>? temperature_2m});
}

/// @nodoc
class _$HourlyDataCopyWithImpl<$Res, $Val extends HourlyData>
    implements $HourlyDataCopyWith<$Res> {
  _$HourlyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyDataImplCopyWith<$Res>
    implements $HourlyDataCopyWith<$Res> {
  factory _$$HourlyDataImplCopyWith(
          _$HourlyDataImpl value, $Res Function(_$HourlyDataImpl) then) =
      __$$HourlyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? time, List<double>? temperature_2m});
}

/// @nodoc
class __$$HourlyDataImplCopyWithImpl<$Res>
    extends _$HourlyDataCopyWithImpl<$Res, _$HourlyDataImpl>
    implements _$$HourlyDataImplCopyWith<$Res> {
  __$$HourlyDataImplCopyWithImpl(
      _$HourlyDataImpl _value, $Res Function(_$HourlyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
  }) {
    return _then(_$HourlyDataImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature_2m: freezed == temperature_2m
          ? _value._temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyDataImpl implements _HourlyData {
  _$HourlyDataImpl(
      {final List<String>? time, final List<double>? temperature_2m})
      : _time = time,
        _temperature_2m = temperature_2m;

  factory _$HourlyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyDataImplFromJson(json);

  final List<String>? _time;
  @override
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature_2m;
  @override
  List<double>? get temperature_2m {
    final value = _temperature_2m;
    if (value == null) return null;
    if (_temperature_2m is EqualUnmodifiableListView) return _temperature_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HourlyData(time: $time, temperature_2m: $temperature_2m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyDataImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m, _temperature_2m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyDataImplCopyWith<_$HourlyDataImpl> get copyWith =>
      __$$HourlyDataImplCopyWithImpl<_$HourlyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyDataImplToJson(
      this,
    );
  }
}

abstract class _HourlyData implements HourlyData {
  factory _HourlyData(
      {final List<String>? time,
      final List<double>? temperature_2m}) = _$HourlyDataImpl;

  factory _HourlyData.fromJson(Map<String, dynamic> json) =
      _$HourlyDataImpl.fromJson;

  @override
  List<String>? get time;
  @override
  List<double>? get temperature_2m;
  @override
  @JsonKey(ignore: true)
  _$$HourlyDataImplCopyWith<_$HourlyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponse {
  HourlyData? get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({HourlyData? hourly});

  $HourlyDataCopyWith<$Res>? get hourly;
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = freezed,
  }) {
    return _then(_value.copyWith(
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyDataCopyWith<$Res>? get hourly {
    if (_value.hourly == null) {
      return null;
    }

    return $HourlyDataCopyWith<$Res>(_value.hourly!, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastResponseImplCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$ForecastResponseImplCopyWith(_$ForecastResponseImpl value,
          $Res Function(_$ForecastResponseImpl) then) =
      __$$ForecastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HourlyData? hourly});

  @override
  $HourlyDataCopyWith<$Res>? get hourly;
}

/// @nodoc
class __$$ForecastResponseImplCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$ForecastResponseImpl>
    implements _$$ForecastResponseImplCopyWith<$Res> {
  __$$ForecastResponseImplCopyWithImpl(_$ForecastResponseImpl _value,
      $Res Function(_$ForecastResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = freezed,
  }) {
    return _then(_$ForecastResponseImpl(
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastResponseImpl implements _ForecastResponse {
  _$ForecastResponseImpl({this.hourly});

  factory _$ForecastResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastResponseImplFromJson(json);

  @override
  final HourlyData? hourly;

  @override
  String toString() {
    return 'ForecastResponse(hourly: $hourly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastResponseImpl &&
            (identical(other.hourly, hourly) || other.hourly == hourly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hourly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      __$$ForecastResponseImplCopyWithImpl<_$ForecastResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastResponseImplToJson(
      this,
    );
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  factory _ForecastResponse({final HourlyData? hourly}) =
      _$ForecastResponseImpl;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$ForecastResponseImpl.fromJson;

  @override
  HourlyData? get hourly;
  @override
  @JsonKey(ignore: true)
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
