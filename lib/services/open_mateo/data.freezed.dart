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

/// @nodoc
mixin _$HourlyData {
  String? get time => throw _privateConstructorUsedError;
  double? get temperature_2m => throw _privateConstructorUsedError;
  int? get weather_code => throw _privateConstructorUsedError;

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
  $Res call({String? time, double? temperature_2m, int? weather_code});
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
    Object? weather_code = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({String? time, double? temperature_2m, int? weather_code});
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
    Object? weather_code = freezed,
  }) {
    return _then(_$HourlyDataImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m: freezed == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HourlyDataImpl implements _HourlyData {
  _$HourlyDataImpl({this.time, this.temperature_2m, this.weather_code});

  @override
  final String? time;
  @override
  final double? temperature_2m;
  @override
  final int? weather_code;

  @override
  String toString() {
    return 'HourlyData(time: $time, temperature_2m: $temperature_2m, weather_code: $weather_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m) &&
            (identical(other.weather_code, weather_code) ||
                other.weather_code == weather_code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, time, temperature_2m, weather_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyDataImplCopyWith<_$HourlyDataImpl> get copyWith =>
      __$$HourlyDataImplCopyWithImpl<_$HourlyDataImpl>(this, _$identity);
}

abstract class _HourlyData implements HourlyData {
  factory _HourlyData(
      {final String? time,
      final double? temperature_2m,
      final int? weather_code}) = _$HourlyDataImpl;

  @override
  String? get time;
  @override
  double? get temperature_2m;
  @override
  int? get weather_code;
  @override
  @JsonKey(ignore: true)
  _$$HourlyDataImplCopyWith<_$HourlyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DailyData {
  String? get time => throw _privateConstructorUsedError;
  double? get temperature_2m_min => throw _privateConstructorUsedError;
  double? get temperature_2m_max => throw _privateConstructorUsedError;
  int? get weather_code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyDataCopyWith<DailyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyDataCopyWith<$Res> {
  factory $DailyDataCopyWith(DailyData value, $Res Function(DailyData) then) =
      _$DailyDataCopyWithImpl<$Res, DailyData>;
  @useResult
  $Res call(
      {String? time,
      double? temperature_2m_min,
      double? temperature_2m_max,
      int? weather_code});
}

/// @nodoc
class _$DailyDataCopyWithImpl<$Res, $Val extends DailyData>
    implements $DailyDataCopyWith<$Res> {
  _$DailyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m_min = freezed,
    Object? temperature_2m_max = freezed,
    Object? weather_code = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m_min: freezed == temperature_2m_min
          ? _value.temperature_2m_min
          : temperature_2m_min // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature_2m_max: freezed == temperature_2m_max
          ? _value.temperature_2m_max
          : temperature_2m_max // ignore: cast_nullable_to_non_nullable
              as double?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyDataImplCopyWith<$Res>
    implements $DailyDataCopyWith<$Res> {
  factory _$$DailyDataImplCopyWith(
          _$DailyDataImpl value, $Res Function(_$DailyDataImpl) then) =
      __$$DailyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      double? temperature_2m_min,
      double? temperature_2m_max,
      int? weather_code});
}

/// @nodoc
class __$$DailyDataImplCopyWithImpl<$Res>
    extends _$DailyDataCopyWithImpl<$Res, _$DailyDataImpl>
    implements _$$DailyDataImplCopyWith<$Res> {
  __$$DailyDataImplCopyWithImpl(
      _$DailyDataImpl _value, $Res Function(_$DailyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m_min = freezed,
    Object? temperature_2m_max = freezed,
    Object? weather_code = freezed,
  }) {
    return _then(_$DailyDataImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature_2m_min: freezed == temperature_2m_min
          ? _value.temperature_2m_min
          : temperature_2m_min // ignore: cast_nullable_to_non_nullable
              as double?,
      temperature_2m_max: freezed == temperature_2m_max
          ? _value.temperature_2m_max
          : temperature_2m_max // ignore: cast_nullable_to_non_nullable
              as double?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DailyDataImpl implements _DailyData {
  _$DailyDataImpl(
      {this.time,
      this.temperature_2m_min,
      this.temperature_2m_max,
      this.weather_code});

  @override
  final String? time;
  @override
  final double? temperature_2m_min;
  @override
  final double? temperature_2m_max;
  @override
  final int? weather_code;

  @override
  String toString() {
    return 'DailyData(time: $time, temperature_2m_min: $temperature_2m_min, temperature_2m_max: $temperature_2m_max, weather_code: $weather_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature_2m_min, temperature_2m_min) ||
                other.temperature_2m_min == temperature_2m_min) &&
            (identical(other.temperature_2m_max, temperature_2m_max) ||
                other.temperature_2m_max == temperature_2m_max) &&
            (identical(other.weather_code, weather_code) ||
                other.weather_code == weather_code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, time, temperature_2m_min, temperature_2m_max, weather_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyDataImplCopyWith<_$DailyDataImpl> get copyWith =>
      __$$DailyDataImplCopyWithImpl<_$DailyDataImpl>(this, _$identity);
}

abstract class _DailyData implements DailyData {
  factory _DailyData(
      {final String? time,
      final double? temperature_2m_min,
      final double? temperature_2m_max,
      final int? weather_code}) = _$DailyDataImpl;

  @override
  String? get time;
  @override
  double? get temperature_2m_min;
  @override
  double? get temperature_2m_max;
  @override
  int? get weather_code;
  @override
  @JsonKey(ignore: true)
  _$$DailyDataImplCopyWith<_$DailyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyDataResponse _$HourlyDataResponseFromJson(Map<String, dynamic> json) {
  return _HourlyDataResponse.fromJson(json);
}

/// @nodoc
mixin _$HourlyDataResponse {
  List<String>? get time => throw _privateConstructorUsedError;
  List<double>? get temperature_2m => throw _privateConstructorUsedError;
  List<int>? get weather_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyDataResponseCopyWith<HourlyDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyDataResponseCopyWith<$Res> {
  factory $HourlyDataResponseCopyWith(
          HourlyDataResponse value, $Res Function(HourlyDataResponse) then) =
      _$HourlyDataResponseCopyWithImpl<$Res, HourlyDataResponse>;
  @useResult
  $Res call(
      {List<String>? time,
      List<double>? temperature_2m,
      List<int>? weather_code});
}

/// @nodoc
class _$HourlyDataResponseCopyWithImpl<$Res, $Val extends HourlyDataResponse>
    implements $HourlyDataResponseCopyWith<$Res> {
  _$HourlyDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
    Object? weather_code = freezed,
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
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyDataResponseImplCopyWith<$Res>
    implements $HourlyDataResponseCopyWith<$Res> {
  factory _$$HourlyDataResponseImplCopyWith(_$HourlyDataResponseImpl value,
          $Res Function(_$HourlyDataResponseImpl) then) =
      __$$HourlyDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? time,
      List<double>? temperature_2m,
      List<int>? weather_code});
}

/// @nodoc
class __$$HourlyDataResponseImplCopyWithImpl<$Res>
    extends _$HourlyDataResponseCopyWithImpl<$Res, _$HourlyDataResponseImpl>
    implements _$$HourlyDataResponseImplCopyWith<$Res> {
  __$$HourlyDataResponseImplCopyWithImpl(_$HourlyDataResponseImpl _value,
      $Res Function(_$HourlyDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m = freezed,
    Object? weather_code = freezed,
  }) {
    return _then(_$HourlyDataResponseImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature_2m: freezed == temperature_2m
          ? _value._temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      weather_code: freezed == weather_code
          ? _value._weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyDataResponseImpl implements _HourlyDataResponse {
  _$HourlyDataResponseImpl(
      {final List<String>? time,
      final List<double>? temperature_2m,
      final List<int>? weather_code})
      : _time = time,
        _temperature_2m = temperature_2m,
        _weather_code = weather_code;

  factory _$HourlyDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyDataResponseImplFromJson(json);

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

  final List<int>? _weather_code;
  @override
  List<int>? get weather_code {
    final value = _weather_code;
    if (value == null) return null;
    if (_weather_code is EqualUnmodifiableListView) return _weather_code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HourlyDataResponse(time: $time, temperature_2m: $temperature_2m, weather_code: $weather_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyDataResponseImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m, _temperature_2m) &&
            const DeepCollectionEquality()
                .equals(other._weather_code, _weather_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m),
      const DeepCollectionEquality().hash(_weather_code));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyDataResponseImplCopyWith<_$HourlyDataResponseImpl> get copyWith =>
      __$$HourlyDataResponseImplCopyWithImpl<_$HourlyDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyDataResponseImplToJson(
      this,
    );
  }
}

abstract class _HourlyDataResponse implements HourlyDataResponse {
  factory _HourlyDataResponse(
      {final List<String>? time,
      final List<double>? temperature_2m,
      final List<int>? weather_code}) = _$HourlyDataResponseImpl;

  factory _HourlyDataResponse.fromJson(Map<String, dynamic> json) =
      _$HourlyDataResponseImpl.fromJson;

  @override
  List<String>? get time;
  @override
  List<double>? get temperature_2m;
  @override
  List<int>? get weather_code;
  @override
  @JsonKey(ignore: true)
  _$$HourlyDataResponseImplCopyWith<_$HourlyDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyDataResponse _$DailyDataResponseFromJson(Map<String, dynamic> json) {
  return _DailyDataResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyDataResponse {
  List<String>? get time => throw _privateConstructorUsedError;
  List<double>? get temperature_2m_min => throw _privateConstructorUsedError;
  List<double>? get temperature_2m_max => throw _privateConstructorUsedError;
  List<int>? get weather_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyDataResponseCopyWith<DailyDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyDataResponseCopyWith<$Res> {
  factory $DailyDataResponseCopyWith(
          DailyDataResponse value, $Res Function(DailyDataResponse) then) =
      _$DailyDataResponseCopyWithImpl<$Res, DailyDataResponse>;
  @useResult
  $Res call(
      {List<String>? time,
      List<double>? temperature_2m_min,
      List<double>? temperature_2m_max,
      List<int>? weather_code});
}

/// @nodoc
class _$DailyDataResponseCopyWithImpl<$Res, $Val extends DailyDataResponse>
    implements $DailyDataResponseCopyWith<$Res> {
  _$DailyDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m_min = freezed,
    Object? temperature_2m_max = freezed,
    Object? weather_code = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature_2m_min: freezed == temperature_2m_min
          ? _value.temperature_2m_min
          : temperature_2m_min // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperature_2m_max: freezed == temperature_2m_max
          ? _value.temperature_2m_max
          : temperature_2m_max // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      weather_code: freezed == weather_code
          ? _value.weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyDataResponseImplCopyWith<$Res>
    implements $DailyDataResponseCopyWith<$Res> {
  factory _$$DailyDataResponseImplCopyWith(_$DailyDataResponseImpl value,
          $Res Function(_$DailyDataResponseImpl) then) =
      __$$DailyDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? time,
      List<double>? temperature_2m_min,
      List<double>? temperature_2m_max,
      List<int>? weather_code});
}

/// @nodoc
class __$$DailyDataResponseImplCopyWithImpl<$Res>
    extends _$DailyDataResponseCopyWithImpl<$Res, _$DailyDataResponseImpl>
    implements _$$DailyDataResponseImplCopyWith<$Res> {
  __$$DailyDataResponseImplCopyWithImpl(_$DailyDataResponseImpl _value,
      $Res Function(_$DailyDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature_2m_min = freezed,
    Object? temperature_2m_max = freezed,
    Object? weather_code = freezed,
  }) {
    return _then(_$DailyDataResponseImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature_2m_min: freezed == temperature_2m_min
          ? _value._temperature_2m_min
          : temperature_2m_min // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperature_2m_max: freezed == temperature_2m_max
          ? _value._temperature_2m_max
          : temperature_2m_max // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      weather_code: freezed == weather_code
          ? _value._weather_code
          : weather_code // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyDataResponseImpl implements _DailyDataResponse {
  _$DailyDataResponseImpl(
      {final List<String>? time,
      final List<double>? temperature_2m_min,
      final List<double>? temperature_2m_max,
      final List<int>? weather_code})
      : _time = time,
        _temperature_2m_min = temperature_2m_min,
        _temperature_2m_max = temperature_2m_max,
        _weather_code = weather_code;

  factory _$DailyDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyDataResponseImplFromJson(json);

  final List<String>? _time;
  @override
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature_2m_min;
  @override
  List<double>? get temperature_2m_min {
    final value = _temperature_2m_min;
    if (value == null) return null;
    if (_temperature_2m_min is EqualUnmodifiableListView)
      return _temperature_2m_min;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature_2m_max;
  @override
  List<double>? get temperature_2m_max {
    final value = _temperature_2m_max;
    if (value == null) return null;
    if (_temperature_2m_max is EqualUnmodifiableListView)
      return _temperature_2m_max;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _weather_code;
  @override
  List<int>? get weather_code {
    final value = _weather_code;
    if (value == null) return null;
    if (_weather_code is EqualUnmodifiableListView) return _weather_code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyDataResponse(time: $time, temperature_2m_min: $temperature_2m_min, temperature_2m_max: $temperature_2m_max, weather_code: $weather_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyDataResponseImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m_min, _temperature_2m_min) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m_max, _temperature_2m_max) &&
            const DeepCollectionEquality()
                .equals(other._weather_code, _weather_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m_min),
      const DeepCollectionEquality().hash(_temperature_2m_max),
      const DeepCollectionEquality().hash(_weather_code));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyDataResponseImplCopyWith<_$DailyDataResponseImpl> get copyWith =>
      __$$DailyDataResponseImplCopyWithImpl<_$DailyDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyDataResponseImplToJson(
      this,
    );
  }
}

abstract class _DailyDataResponse implements DailyDataResponse {
  factory _DailyDataResponse(
      {final List<String>? time,
      final List<double>? temperature_2m_min,
      final List<double>? temperature_2m_max,
      final List<int>? weather_code}) = _$DailyDataResponseImpl;

  factory _DailyDataResponse.fromJson(Map<String, dynamic> json) =
      _$DailyDataResponseImpl.fromJson;

  @override
  List<String>? get time;
  @override
  List<double>? get temperature_2m_min;
  @override
  List<double>? get temperature_2m_max;
  @override
  List<int>? get weather_code;
  @override
  @JsonKey(ignore: true)
  _$$DailyDataResponseImplCopyWith<_$DailyDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyForecastResponse _$HourlyForecastResponseFromJson(
    Map<String, dynamic> json) {
  return _HourlyForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$HourlyForecastResponse {
  HourlyDataResponse? get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyForecastResponseCopyWith<HourlyForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyForecastResponseCopyWith<$Res> {
  factory $HourlyForecastResponseCopyWith(HourlyForecastResponse value,
          $Res Function(HourlyForecastResponse) then) =
      _$HourlyForecastResponseCopyWithImpl<$Res, HourlyForecastResponse>;
  @useResult
  $Res call({HourlyDataResponse? hourly});

  $HourlyDataResponseCopyWith<$Res>? get hourly;
}

/// @nodoc
class _$HourlyForecastResponseCopyWithImpl<$Res,
        $Val extends HourlyForecastResponse>
    implements $HourlyForecastResponseCopyWith<$Res> {
  _$HourlyForecastResponseCopyWithImpl(this._value, this._then);

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
              as HourlyDataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyDataResponseCopyWith<$Res>? get hourly {
    if (_value.hourly == null) {
      return null;
    }

    return $HourlyDataResponseCopyWith<$Res>(_value.hourly!, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourlyForecastResponseImplCopyWith<$Res>
    implements $HourlyForecastResponseCopyWith<$Res> {
  factory _$$HourlyForecastResponseImplCopyWith(
          _$HourlyForecastResponseImpl value,
          $Res Function(_$HourlyForecastResponseImpl) then) =
      __$$HourlyForecastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HourlyDataResponse? hourly});

  @override
  $HourlyDataResponseCopyWith<$Res>? get hourly;
}

/// @nodoc
class __$$HourlyForecastResponseImplCopyWithImpl<$Res>
    extends _$HourlyForecastResponseCopyWithImpl<$Res,
        _$HourlyForecastResponseImpl>
    implements _$$HourlyForecastResponseImplCopyWith<$Res> {
  __$$HourlyForecastResponseImplCopyWithImpl(
      _$HourlyForecastResponseImpl _value,
      $Res Function(_$HourlyForecastResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = freezed,
  }) {
    return _then(_$HourlyForecastResponseImpl(
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyForecastResponseImpl implements _HourlyForecastResponse {
  _$HourlyForecastResponseImpl({this.hourly});

  factory _$HourlyForecastResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyForecastResponseImplFromJson(json);

  @override
  final HourlyDataResponse? hourly;

  @override
  String toString() {
    return 'HourlyForecastResponse(hourly: $hourly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyForecastResponseImpl &&
            (identical(other.hourly, hourly) || other.hourly == hourly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hourly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyForecastResponseImplCopyWith<_$HourlyForecastResponseImpl>
      get copyWith => __$$HourlyForecastResponseImplCopyWithImpl<
          _$HourlyForecastResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyForecastResponseImplToJson(
      this,
    );
  }
}

abstract class _HourlyForecastResponse implements HourlyForecastResponse {
  factory _HourlyForecastResponse({final HourlyDataResponse? hourly}) =
      _$HourlyForecastResponseImpl;

  factory _HourlyForecastResponse.fromJson(Map<String, dynamic> json) =
      _$HourlyForecastResponseImpl.fromJson;

  @override
  HourlyDataResponse? get hourly;
  @override
  @JsonKey(ignore: true)
  _$$HourlyForecastResponseImplCopyWith<_$HourlyForecastResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DailyForecastResponse _$DailyForecastResponseFromJson(
    Map<String, dynamic> json) {
  return _DailyForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyForecastResponse {
  DailyDataResponse? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyForecastResponseCopyWith<DailyForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyForecastResponseCopyWith<$Res> {
  factory $DailyForecastResponseCopyWith(DailyForecastResponse value,
          $Res Function(DailyForecastResponse) then) =
      _$DailyForecastResponseCopyWithImpl<$Res, DailyForecastResponse>;
  @useResult
  $Res call({DailyDataResponse? daily});

  $DailyDataResponseCopyWith<$Res>? get daily;
}

/// @nodoc
class _$DailyForecastResponseCopyWithImpl<$Res,
        $Val extends DailyForecastResponse>
    implements $DailyForecastResponseCopyWith<$Res> {
  _$DailyForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyDataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyDataResponseCopyWith<$Res>? get daily {
    if (_value.daily == null) {
      return null;
    }

    return $DailyDataResponseCopyWith<$Res>(_value.daily!, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyForecastResponseImplCopyWith<$Res>
    implements $DailyForecastResponseCopyWith<$Res> {
  factory _$$DailyForecastResponseImplCopyWith(
          _$DailyForecastResponseImpl value,
          $Res Function(_$DailyForecastResponseImpl) then) =
      __$$DailyForecastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DailyDataResponse? daily});

  @override
  $DailyDataResponseCopyWith<$Res>? get daily;
}

/// @nodoc
class __$$DailyForecastResponseImplCopyWithImpl<$Res>
    extends _$DailyForecastResponseCopyWithImpl<$Res,
        _$DailyForecastResponseImpl>
    implements _$$DailyForecastResponseImplCopyWith<$Res> {
  __$$DailyForecastResponseImplCopyWithImpl(_$DailyForecastResponseImpl _value,
      $Res Function(_$DailyForecastResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = freezed,
  }) {
    return _then(_$DailyForecastResponseImpl(
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyForecastResponseImpl implements _DailyForecastResponse {
  _$DailyForecastResponseImpl({this.daily});

  factory _$DailyForecastResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyForecastResponseImplFromJson(json);

  @override
  final DailyDataResponse? daily;

  @override
  String toString() {
    return 'DailyForecastResponse(daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyForecastResponseImpl &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyForecastResponseImplCopyWith<_$DailyForecastResponseImpl>
      get copyWith => __$$DailyForecastResponseImplCopyWithImpl<
          _$DailyForecastResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyForecastResponseImplToJson(
      this,
    );
  }
}

abstract class _DailyForecastResponse implements DailyForecastResponse {
  factory _DailyForecastResponse({final DailyDataResponse? daily}) =
      _$DailyForecastResponseImpl;

  factory _DailyForecastResponse.fromJson(Map<String, dynamic> json) =
      _$DailyForecastResponseImpl.fromJson;

  @override
  DailyDataResponse? get daily;
  @override
  @JsonKey(ignore: true)
  _$$DailyForecastResponseImplCopyWith<_$DailyForecastResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
