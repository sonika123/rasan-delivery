// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpResponse _$OtpResponseFromJson(Map<String, dynamic> json) {
  return _OtpResponse.fromJson(json);
}

/// @nodoc
mixin _$OtpResponse {
  bool? get success => throw _privateConstructorUsedError;
  OtpData get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpResponseCopyWith<OtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResponseCopyWith<$Res> {
  factory $OtpResponseCopyWith(
          OtpResponse value, $Res Function(OtpResponse) then) =
      _$OtpResponseCopyWithImpl<$Res, OtpResponse>;
  @useResult
  $Res call({bool? success, OtpData data, String? message});

  $OtpDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OtpResponseCopyWithImpl<$Res, $Val extends OtpResponse>
    implements $OtpResponseCopyWith<$Res> {
  _$OtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtpData,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtpDataCopyWith<$Res> get data {
    return $OtpDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtpResponseImplCopyWith<$Res>
    implements $OtpResponseCopyWith<$Res> {
  factory _$$OtpResponseImplCopyWith(
          _$OtpResponseImpl value, $Res Function(_$OtpResponseImpl) then) =
      __$$OtpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, OtpData data, String? message});

  @override
  $OtpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OtpResponseImplCopyWithImpl<$Res>
    extends _$OtpResponseCopyWithImpl<$Res, _$OtpResponseImpl>
    implements _$$OtpResponseImplCopyWith<$Res> {
  __$$OtpResponseImplCopyWithImpl(
      _$OtpResponseImpl _value, $Res Function(_$OtpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$OtpResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OtpData,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpResponseImpl implements _OtpResponse {
  const _$OtpResponseImpl({this.success, required this.data, this.message});

  factory _$OtpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final OtpData data;
  @override
  final String? message;

  @override
  String toString() {
    return 'OtpResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResponseImplCopyWith<_$OtpResponseImpl> get copyWith =>
      __$$OtpResponseImplCopyWithImpl<_$OtpResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpResponseImplToJson(
      this,
    );
  }
}

abstract class _OtpResponse implements OtpResponse {
  const factory _OtpResponse(
      {final bool? success,
      required final OtpData data,
      final String? message}) = _$OtpResponseImpl;

  factory _OtpResponse.fromJson(Map<String, dynamic> json) =
      _$OtpResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  OtpData get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OtpResponseImplCopyWith<_$OtpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpData _$OtpDataFromJson(Map<String, dynamic> json) {
  return _OtpData.fromJson(json);
}

/// @nodoc
mixin _$OtpData {
  String get phone => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpDataCopyWith<OtpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDataCopyWith<$Res> {
  factory $OtpDataCopyWith(OtpData value, $Res Function(OtpData) then) =
      _$OtpDataCopyWithImpl<$Res, OtpData>;
  @useResult
  $Res call({String phone, String token});
}

/// @nodoc
class _$OtpDataCopyWithImpl<$Res, $Val extends OtpData>
    implements $OtpDataCopyWith<$Res> {
  _$OtpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpDataImplCopyWith<$Res> implements $OtpDataCopyWith<$Res> {
  factory _$$OtpDataImplCopyWith(
          _$OtpDataImpl value, $Res Function(_$OtpDataImpl) then) =
      __$$OtpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String token});
}

/// @nodoc
class __$$OtpDataImplCopyWithImpl<$Res>
    extends _$OtpDataCopyWithImpl<$Res, _$OtpDataImpl>
    implements _$$OtpDataImplCopyWith<$Res> {
  __$$OtpDataImplCopyWithImpl(
      _$OtpDataImpl _value, $Res Function(_$OtpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? token = null,
  }) {
    return _then(_$OtpDataImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpDataImpl implements _OtpData {
  const _$OtpDataImpl({required this.phone, required this.token});

  factory _$OtpDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpDataImplFromJson(json);

  @override
  final String phone;
  @override
  final String token;

  @override
  String toString() {
    return 'OtpData(phone: $phone, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDataImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      __$$OtpDataImplCopyWithImpl<_$OtpDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpDataImplToJson(
      this,
    );
  }
}

abstract class _OtpData implements OtpData {
  const factory _OtpData(
      {required final String phone,
      required final String token}) = _$OtpDataImpl;

  factory _OtpData.fromJson(Map<String, dynamic> json) = _$OtpDataImpl.fromJson;

  @override
  String get phone;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
