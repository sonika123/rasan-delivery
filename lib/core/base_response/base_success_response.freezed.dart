// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseSuccessResponse _$BaseSuccessResponseFromJson(Map<String, dynamic> json) {
  return _BaseSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseSuccessResponse {
  bool get success => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseSuccessResponseCopyWith<BaseSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseSuccessResponseCopyWith<$Res> {
  factory $BaseSuccessResponseCopyWith(
          BaseSuccessResponse value, $Res Function(BaseSuccessResponse) then) =
      _$BaseSuccessResponseCopyWithImpl<$Res, BaseSuccessResponse>;
  @useResult
  $Res call({bool success, Map<String, dynamic>? data, String? message});
}

/// @nodoc
class _$BaseSuccessResponseCopyWithImpl<$Res, $Val extends BaseSuccessResponse>
    implements $BaseSuccessResponseCopyWith<$Res> {
  _$BaseSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseSuccessResponseImplCopyWith<$Res>
    implements $BaseSuccessResponseCopyWith<$Res> {
  factory _$$BaseSuccessResponseImplCopyWith(_$BaseSuccessResponseImpl value,
          $Res Function(_$BaseSuccessResponseImpl) then) =
      __$$BaseSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Map<String, dynamic>? data, String? message});
}

/// @nodoc
class __$$BaseSuccessResponseImplCopyWithImpl<$Res>
    extends _$BaseSuccessResponseCopyWithImpl<$Res, _$BaseSuccessResponseImpl>
    implements _$$BaseSuccessResponseImplCopyWith<$Res> {
  __$$BaseSuccessResponseImplCopyWithImpl(_$BaseSuccessResponseImpl _value,
      $Res Function(_$BaseSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BaseSuccessResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseSuccessResponseImpl implements _BaseSuccessResponse {
  const _$BaseSuccessResponseImpl(
      {required this.success, final Map<String, dynamic>? data, this.message})
      : _data = data;

  factory _$BaseSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseSuccessResponseImplFromJson(json);

  @override
  final bool success;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'BaseSuccessResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseSuccessResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseSuccessResponseImplCopyWith<_$BaseSuccessResponseImpl> get copyWith =>
      __$$BaseSuccessResponseImplCopyWithImpl<_$BaseSuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseSuccessResponse implements BaseSuccessResponse {
  const factory _BaseSuccessResponse(
      {required final bool success,
      final Map<String, dynamic>? data,
      final String? message}) = _$BaseSuccessResponseImpl;

  factory _BaseSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$BaseSuccessResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Map<String, dynamic>? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BaseSuccessResponseImplCopyWith<_$BaseSuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
