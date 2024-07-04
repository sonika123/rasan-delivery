// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseErrorResponse _$BaseErrorResponseFromJson(Map<String, dynamic> json) {
  return _BaseErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseErrorResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get errors => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorResponseCopyWith<BaseErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorResponseCopyWith<$Res> {
  factory $BaseErrorResponseCopyWith(
          BaseErrorResponse value, $Res Function(BaseErrorResponse) then) =
      _$BaseErrorResponseCopyWithImpl<$Res, BaseErrorResponse>;
  @useResult
  $Res call({bool success, String? errors, String? message});
}

/// @nodoc
class _$BaseErrorResponseCopyWithImpl<$Res, $Val extends BaseErrorResponse>
    implements $BaseErrorResponseCopyWith<$Res> {
  _$BaseErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errors = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseErrorResponseImplCopyWith<$Res>
    implements $BaseErrorResponseCopyWith<$Res> {
  factory _$$BaseErrorResponseImplCopyWith(_$BaseErrorResponseImpl value,
          $Res Function(_$BaseErrorResponseImpl) then) =
      __$$BaseErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? errors, String? message});
}

/// @nodoc
class __$$BaseErrorResponseImplCopyWithImpl<$Res>
    extends _$BaseErrorResponseCopyWithImpl<$Res, _$BaseErrorResponseImpl>
    implements _$$BaseErrorResponseImplCopyWith<$Res> {
  __$$BaseErrorResponseImplCopyWithImpl(_$BaseErrorResponseImpl _value,
      $Res Function(_$BaseErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errors = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BaseErrorResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseErrorResponseImpl implements _BaseErrorResponse {
  const _$BaseErrorResponseImpl(
      {required this.success, this.errors, this.message});

  factory _$BaseErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseErrorResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? errors;
  @override
  final String? message;

  @override
  String toString() {
    return 'BaseErrorResponse(success: $success, errors: $errors, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseErrorResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, errors, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseErrorResponseImplCopyWith<_$BaseErrorResponseImpl> get copyWith =>
      __$$BaseErrorResponseImplCopyWithImpl<_$BaseErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseErrorResponse implements BaseErrorResponse {
  const factory _BaseErrorResponse(
      {required final bool success,
      final String? errors,
      final String? message}) = _$BaseErrorResponseImpl;

  factory _BaseErrorResponse.fromJson(Map<String, dynamic> json) =
      _$BaseErrorResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get errors;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BaseErrorResponseImplCopyWith<_$BaseErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
