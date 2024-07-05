// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLocationResponse _$UserLocationResponseFromJson(Map<String, dynamic> json) {
  return _UserLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$UserLocationResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserLocationInfo get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationResponseCopyWith<UserLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationResponseCopyWith<$Res> {
  factory $UserLocationResponseCopyWith(UserLocationResponse value,
          $Res Function(UserLocationResponse) then) =
      _$UserLocationResponseCopyWithImpl<$Res, UserLocationResponse>;
  @useResult
  $Res call({bool success, String? message, UserLocationInfo data});

  $UserLocationInfoCopyWith<$Res> get data;
}

/// @nodoc
class _$UserLocationResponseCopyWithImpl<$Res,
        $Val extends UserLocationResponse>
    implements $UserLocationResponseCopyWith<$Res> {
  _$UserLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserLocationInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationInfoCopyWith<$Res> get data {
    return $UserLocationInfoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLocationResponseImplCopyWith<$Res>
    implements $UserLocationResponseCopyWith<$Res> {
  factory _$$UserLocationResponseImplCopyWith(_$UserLocationResponseImpl value,
          $Res Function(_$UserLocationResponseImpl) then) =
      __$$UserLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, UserLocationInfo data});

  @override
  $UserLocationInfoCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserLocationResponseImplCopyWithImpl<$Res>
    extends _$UserLocationResponseCopyWithImpl<$Res, _$UserLocationResponseImpl>
    implements _$$UserLocationResponseImplCopyWith<$Res> {
  __$$UserLocationResponseImplCopyWithImpl(_$UserLocationResponseImpl _value,
      $Res Function(_$UserLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UserLocationResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserLocationInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocationResponseImpl implements _UserLocationResponse {
  const _$UserLocationResponseImpl(
      {required this.success, this.message, required this.data});

  factory _$UserLocationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final UserLocationInfo data;

  @override
  String toString() {
    return 'UserLocationResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationResponseImplCopyWith<_$UserLocationResponseImpl>
      get copyWith =>
          __$$UserLocationResponseImplCopyWithImpl<_$UserLocationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _UserLocationResponse implements UserLocationResponse {
  const factory _UserLocationResponse(
      {required final bool success,
      final String? message,
      required final UserLocationInfo data}) = _$UserLocationResponseImpl;

  factory _UserLocationResponse.fromJson(Map<String, dynamic> json) =
      _$UserLocationResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  UserLocationInfo get data;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationResponseImplCopyWith<_$UserLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserLocationInfo _$UserLocationInfoFromJson(Map<String, dynamic> json) {
  return _UserLocationInfo.fromJson(json);
}

/// @nodoc
mixin _$UserLocationInfo {
  int? get count => throw _privateConstructorUsedError;
  List<UserLocationData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationInfoCopyWith<UserLocationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationInfoCopyWith<$Res> {
  factory $UserLocationInfoCopyWith(
          UserLocationInfo value, $Res Function(UserLocationInfo) then) =
      _$UserLocationInfoCopyWithImpl<$Res, UserLocationInfo>;
  @useResult
  $Res call({int? count, List<UserLocationData> results});
}

/// @nodoc
class _$UserLocationInfoCopyWithImpl<$Res, $Val extends UserLocationInfo>
    implements $UserLocationInfoCopyWith<$Res> {
  _$UserLocationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserLocationData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLocationInfoImplCopyWith<$Res>
    implements $UserLocationInfoCopyWith<$Res> {
  factory _$$UserLocationInfoImplCopyWith(_$UserLocationInfoImpl value,
          $Res Function(_$UserLocationInfoImpl) then) =
      __$$UserLocationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<UserLocationData> results});
}

/// @nodoc
class __$$UserLocationInfoImplCopyWithImpl<$Res>
    extends _$UserLocationInfoCopyWithImpl<$Res, _$UserLocationInfoImpl>
    implements _$$UserLocationInfoImplCopyWith<$Res> {
  __$$UserLocationInfoImplCopyWithImpl(_$UserLocationInfoImpl _value,
      $Res Function(_$UserLocationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? results = null,
  }) {
    return _then(_$UserLocationInfoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserLocationData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocationInfoImpl implements _UserLocationInfo {
  const _$UserLocationInfoImpl(
      {this.count, required final List<UserLocationData> results})
      : _results = results;

  factory _$UserLocationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationInfoImplFromJson(json);

  @override
  final int? count;
  final List<UserLocationData> _results;
  @override
  List<UserLocationData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'UserLocationInfo(count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationInfoImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationInfoImplCopyWith<_$UserLocationInfoImpl> get copyWith =>
      __$$UserLocationInfoImplCopyWithImpl<_$UserLocationInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationInfoImplToJson(
      this,
    );
  }
}

abstract class _UserLocationInfo implements UserLocationInfo {
  const factory _UserLocationInfo(
      {final int? count,
      required final List<UserLocationData> results}) = _$UserLocationInfoImpl;

  factory _UserLocationInfo.fromJson(Map<String, dynamic> json) =
      _$UserLocationInfoImpl.fromJson;

  @override
  int? get count;
  @override
  List<UserLocationData> get results;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationInfoImplCopyWith<_$UserLocationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLocationData _$UserLocationDataFromJson(Map<String, dynamic> json) {
  return _UserLocationData.fromJson(json);
}

/// @nodoc
mixin _$UserLocationData {
  int get id => throw _privateConstructorUsedError;
  LocationNameCode get province => throw _privateConstructorUsedError;
  LocationNameCode get city => throw _privateConstructorUsedError;
  LocationNameCode get area => throw _privateConstructorUsedError;
  bool? get is_default => throw _privateConstructorUsedError;
  String? get detail_address => throw _privateConstructorUsedError;
  String? get map_latitude => throw _privateConstructorUsedError;
  String? get map_longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationDataCopyWith<UserLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationDataCopyWith<$Res> {
  factory $UserLocationDataCopyWith(
          UserLocationData value, $Res Function(UserLocationData) then) =
      _$UserLocationDataCopyWithImpl<$Res, UserLocationData>;
  @useResult
  $Res call(
      {int id,
      LocationNameCode province,
      LocationNameCode city,
      LocationNameCode area,
      bool? is_default,
      String? detail_address,
      String? map_latitude,
      String? map_longitude});

  $LocationNameCodeCopyWith<$Res> get province;
  $LocationNameCodeCopyWith<$Res> get city;
  $LocationNameCodeCopyWith<$Res> get area;
}

/// @nodoc
class _$UserLocationDataCopyWithImpl<$Res, $Val extends UserLocationData>
    implements $UserLocationDataCopyWith<$Res> {
  _$UserLocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? is_default = freezed,
    Object? detail_address = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      is_default: freezed == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationNameCodeCopyWith<$Res> get province {
    return $LocationNameCodeCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationNameCodeCopyWith<$Res> get city {
    return $LocationNameCodeCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationNameCodeCopyWith<$Res> get area {
    return $LocationNameCodeCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLocationDataImplCopyWith<$Res>
    implements $UserLocationDataCopyWith<$Res> {
  factory _$$UserLocationDataImplCopyWith(_$UserLocationDataImpl value,
          $Res Function(_$UserLocationDataImpl) then) =
      __$$UserLocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      LocationNameCode province,
      LocationNameCode city,
      LocationNameCode area,
      bool? is_default,
      String? detail_address,
      String? map_latitude,
      String? map_longitude});

  @override
  $LocationNameCodeCopyWith<$Res> get province;
  @override
  $LocationNameCodeCopyWith<$Res> get city;
  @override
  $LocationNameCodeCopyWith<$Res> get area;
}

/// @nodoc
class __$$UserLocationDataImplCopyWithImpl<$Res>
    extends _$UserLocationDataCopyWithImpl<$Res, _$UserLocationDataImpl>
    implements _$$UserLocationDataImplCopyWith<$Res> {
  __$$UserLocationDataImplCopyWithImpl(_$UserLocationDataImpl _value,
      $Res Function(_$UserLocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? province = null,
    Object? city = null,
    Object? area = null,
    Object? is_default = freezed,
    Object? detail_address = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
  }) {
    return _then(_$UserLocationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as LocationNameCode,
      is_default: freezed == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocationDataImpl implements _UserLocationData {
  const _$UserLocationDataImpl(
      {required this.id,
      required this.province,
      required this.city,
      required this.area,
      this.is_default,
      this.detail_address,
      this.map_latitude,
      this.map_longitude});

  factory _$UserLocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationDataImplFromJson(json);

  @override
  final int id;
  @override
  final LocationNameCode province;
  @override
  final LocationNameCode city;
  @override
  final LocationNameCode area;
  @override
  final bool? is_default;
  @override
  final String? detail_address;
  @override
  final String? map_latitude;
  @override
  final String? map_longitude;

  @override
  String toString() {
    return 'UserLocationData(id: $id, province: $province, city: $city, area: $area, is_default: $is_default, detail_address: $detail_address, map_latitude: $map_latitude, map_longitude: $map_longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.is_default, is_default) ||
                other.is_default == is_default) &&
            (identical(other.detail_address, detail_address) ||
                other.detail_address == detail_address) &&
            (identical(other.map_latitude, map_latitude) ||
                other.map_latitude == map_latitude) &&
            (identical(other.map_longitude, map_longitude) ||
                other.map_longitude == map_longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, province, city, area,
      is_default, detail_address, map_latitude, map_longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationDataImplCopyWith<_$UserLocationDataImpl> get copyWith =>
      __$$UserLocationDataImplCopyWithImpl<_$UserLocationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationDataImplToJson(
      this,
    );
  }
}

abstract class _UserLocationData implements UserLocationData {
  const factory _UserLocationData(
      {required final int id,
      required final LocationNameCode province,
      required final LocationNameCode city,
      required final LocationNameCode area,
      final bool? is_default,
      final String? detail_address,
      final String? map_latitude,
      final String? map_longitude}) = _$UserLocationDataImpl;

  factory _UserLocationData.fromJson(Map<String, dynamic> json) =
      _$UserLocationDataImpl.fromJson;

  @override
  int get id;
  @override
  LocationNameCode get province;
  @override
  LocationNameCode get city;
  @override
  LocationNameCode get area;
  @override
  bool? get is_default;
  @override
  String? get detail_address;
  @override
  String? get map_latitude;
  @override
  String? get map_longitude;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationDataImplCopyWith<_$UserLocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationNameCode _$LocationNameCodeFromJson(Map<String, dynamic> json) {
  return _LocationNameCode.fromJson(json);
}

/// @nodoc
mixin _$LocationNameCode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationNameCodeCopyWith<LocationNameCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationNameCodeCopyWith<$Res> {
  factory $LocationNameCodeCopyWith(
          LocationNameCode value, $Res Function(LocationNameCode) then) =
      _$LocationNameCodeCopyWithImpl<$Res, LocationNameCode>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$LocationNameCodeCopyWithImpl<$Res, $Val extends LocationNameCode>
    implements $LocationNameCodeCopyWith<$Res> {
  _$LocationNameCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationNameCodeImplCopyWith<$Res>
    implements $LocationNameCodeCopyWith<$Res> {
  factory _$$LocationNameCodeImplCopyWith(_$LocationNameCodeImpl value,
          $Res Function(_$LocationNameCodeImpl) then) =
      __$$LocationNameCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$LocationNameCodeImplCopyWithImpl<$Res>
    extends _$LocationNameCodeCopyWithImpl<$Res, _$LocationNameCodeImpl>
    implements _$$LocationNameCodeImplCopyWith<$Res> {
  __$$LocationNameCodeImplCopyWithImpl(_$LocationNameCodeImpl _value,
      $Res Function(_$LocationNameCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$LocationNameCodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationNameCodeImpl implements _LocationNameCode {
  const _$LocationNameCodeImpl({required this.id, required this.name});

  factory _$LocationNameCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationNameCodeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'LocationNameCode(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationNameCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationNameCodeImplCopyWith<_$LocationNameCodeImpl> get copyWith =>
      __$$LocationNameCodeImplCopyWithImpl<_$LocationNameCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationNameCodeImplToJson(
      this,
    );
  }
}

abstract class _LocationNameCode implements LocationNameCode {
  const factory _LocationNameCode(
      {required final int id,
      required final String name}) = _$LocationNameCodeImpl;

  factory _LocationNameCode.fromJson(Map<String, dynamic> json) =
      _$LocationNameCodeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$LocationNameCodeImplCopyWith<_$LocationNameCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
