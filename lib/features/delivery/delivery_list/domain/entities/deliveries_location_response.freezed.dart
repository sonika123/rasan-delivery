// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliveries_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveriesLocationResponse _$DeliveriesLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveriesLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesLocationResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DeliveriesLocationData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesLocationResponseCopyWith<DeliveriesLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesLocationResponseCopyWith<$Res> {
  factory $DeliveriesLocationResponseCopyWith(DeliveriesLocationResponse value,
          $Res Function(DeliveriesLocationResponse) then) =
      _$DeliveriesLocationResponseCopyWithImpl<$Res,
          DeliveriesLocationResponse>;
  @useResult
  $Res call({bool success, String message, DeliveriesLocationData data});

  $DeliveriesLocationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeliveriesLocationResponseCopyWithImpl<$Res,
        $Val extends DeliveriesLocationResponse>
    implements $DeliveriesLocationResponseCopyWith<$Res> {
  _$DeliveriesLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveriesLocationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveriesLocationDataCopyWith<$Res> get data {
    return $DeliveriesLocationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveriesLocationResponseImplCopyWith<$Res>
    implements $DeliveriesLocationResponseCopyWith<$Res> {
  factory _$$DeliveriesLocationResponseImplCopyWith(
          _$DeliveriesLocationResponseImpl value,
          $Res Function(_$DeliveriesLocationResponseImpl) then) =
      __$$DeliveriesLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, DeliveriesLocationData data});

  @override
  $DeliveriesLocationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeliveriesLocationResponseImplCopyWithImpl<$Res>
    extends _$DeliveriesLocationResponseCopyWithImpl<$Res,
        _$DeliveriesLocationResponseImpl>
    implements _$$DeliveriesLocationResponseImplCopyWith<$Res> {
  __$$DeliveriesLocationResponseImplCopyWithImpl(
      _$DeliveriesLocationResponseImpl _value,
      $Res Function(_$DeliveriesLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$DeliveriesLocationResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveriesLocationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveriesLocationResponseImpl implements _DeliveriesLocationResponse {
  const _$DeliveriesLocationResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$DeliveriesLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeliveriesLocationResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final DeliveriesLocationData data;

  @override
  String toString() {
    return 'DeliveriesLocationResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveriesLocationResponseImpl &&
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
  _$$DeliveriesLocationResponseImplCopyWith<_$DeliveriesLocationResponseImpl>
      get copyWith => __$$DeliveriesLocationResponseImplCopyWithImpl<
          _$DeliveriesLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveriesLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _DeliveriesLocationResponse
    implements DeliveriesLocationResponse {
  const factory _DeliveriesLocationResponse(
          {required final bool success,
          required final String message,
          required final DeliveriesLocationData data}) =
      _$DeliveriesLocationResponseImpl;

  factory _DeliveriesLocationResponse.fromJson(Map<String, dynamic> json) =
      _$DeliveriesLocationResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  DeliveriesLocationData get data;
  @override
  @JsonKey(ignore: true)
  _$$DeliveriesLocationResponseImplCopyWith<_$DeliveriesLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveriesLocationData _$DeliveriesLocationDataFromJson(
    Map<String, dynamic> json) {
  return _DeliveriesLocationData.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesLocationData {
  int get id => throw _privateConstructorUsedError;
  int? get area => throw _privateConstructorUsedError;
  int? get city => throw _privateConstructorUsedError;
  int? get province => throw _privateConstructorUsedError;
  String? get map_latitude => throw _privateConstructorUsedError;
  String? get map_longitude => throw _privateConstructorUsedError;
  String? get detail_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesLocationDataCopyWith<DeliveriesLocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesLocationDataCopyWith<$Res> {
  factory $DeliveriesLocationDataCopyWith(DeliveriesLocationData value,
          $Res Function(DeliveriesLocationData) then) =
      _$DeliveriesLocationDataCopyWithImpl<$Res, DeliveriesLocationData>;
  @useResult
  $Res call(
      {int id,
      int? area,
      int? city,
      int? province,
      String? map_latitude,
      String? map_longitude,
      String? detail_address});
}

/// @nodoc
class _$DeliveriesLocationDataCopyWithImpl<$Res,
        $Val extends DeliveriesLocationData>
    implements $DeliveriesLocationDataCopyWith<$Res> {
  _$DeliveriesLocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? area = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
    Object? detail_address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as int?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveriesLocationDataImplCopyWith<$Res>
    implements $DeliveriesLocationDataCopyWith<$Res> {
  factory _$$DeliveriesLocationDataImplCopyWith(
          _$DeliveriesLocationDataImpl value,
          $Res Function(_$DeliveriesLocationDataImpl) then) =
      __$$DeliveriesLocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? area,
      int? city,
      int? province,
      String? map_latitude,
      String? map_longitude,
      String? detail_address});
}

/// @nodoc
class __$$DeliveriesLocationDataImplCopyWithImpl<$Res>
    extends _$DeliveriesLocationDataCopyWithImpl<$Res,
        _$DeliveriesLocationDataImpl>
    implements _$$DeliveriesLocationDataImplCopyWith<$Res> {
  __$$DeliveriesLocationDataImplCopyWithImpl(
      _$DeliveriesLocationDataImpl _value,
      $Res Function(_$DeliveriesLocationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? area = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? map_latitude = freezed,
    Object? map_longitude = freezed,
    Object? detail_address = freezed,
  }) {
    return _then(_$DeliveriesLocationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as int?,
      map_latitude: freezed == map_latitude
          ? _value.map_latitude
          : map_latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      map_longitude: freezed == map_longitude
          ? _value.map_longitude
          : map_longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      detail_address: freezed == detail_address
          ? _value.detail_address
          : detail_address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveriesLocationDataImpl implements _DeliveriesLocationData {
  const _$DeliveriesLocationDataImpl(
      {required this.id,
      this.area,
      this.city,
      this.province,
      this.map_latitude,
      this.map_longitude,
      this.detail_address});

  factory _$DeliveriesLocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveriesLocationDataImplFromJson(json);

  @override
  final int id;
  @override
  final int? area;
  @override
  final int? city;
  @override
  final int? province;
  @override
  final String? map_latitude;
  @override
  final String? map_longitude;
  @override
  final String? detail_address;

  @override
  String toString() {
    return 'DeliveriesLocationData(id: $id, area: $area, city: $city, province: $province, map_latitude: $map_latitude, map_longitude: $map_longitude, detail_address: $detail_address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveriesLocationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.map_latitude, map_latitude) ||
                other.map_latitude == map_latitude) &&
            (identical(other.map_longitude, map_longitude) ||
                other.map_longitude == map_longitude) &&
            (identical(other.detail_address, detail_address) ||
                other.detail_address == detail_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, area, city, province,
      map_latitude, map_longitude, detail_address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveriesLocationDataImplCopyWith<_$DeliveriesLocationDataImpl>
      get copyWith => __$$DeliveriesLocationDataImplCopyWithImpl<
          _$DeliveriesLocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveriesLocationDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveriesLocationData implements DeliveriesLocationData {
  const factory _DeliveriesLocationData(
      {required final int id,
      final int? area,
      final int? city,
      final int? province,
      final String? map_latitude,
      final String? map_longitude,
      final String? detail_address}) = _$DeliveriesLocationDataImpl;

  factory _DeliveriesLocationData.fromJson(Map<String, dynamic> json) =
      _$DeliveriesLocationDataImpl.fromJson;

  @override
  int get id;
  @override
  int? get area;
  @override
  int? get city;
  @override
  int? get province;
  @override
  String? get map_latitude;
  @override
  String? get map_longitude;
  @override
  String? get detail_address;
  @override
  @JsonKey(ignore: true)
  _$$DeliveriesLocationDataImplCopyWith<_$DeliveriesLocationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
