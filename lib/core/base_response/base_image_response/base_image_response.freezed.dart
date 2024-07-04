// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseImageResponse _$BaseImageResponseFromJson(Map<String, dynamic> json) {
  return _BaseImageResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseImageResponse {
  String? get small_square_crop => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get medium_square_crop => throw _privateConstructorUsedError;
  String? get full_size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseImageResponseCopyWith<BaseImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseImageResponseCopyWith<$Res> {
  factory $BaseImageResponseCopyWith(
          BaseImageResponse value, $Res Function(BaseImageResponse) then) =
      _$BaseImageResponseCopyWithImpl<$Res, BaseImageResponse>;
  @useResult
  $Res call(
      {String? small_square_crop,
      String? thumbnail,
      String? medium_square_crop,
      String? full_size});
}

/// @nodoc
class _$BaseImageResponseCopyWithImpl<$Res, $Val extends BaseImageResponse>
    implements $BaseImageResponseCopyWith<$Res> {
  _$BaseImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small_square_crop = freezed,
    Object? thumbnail = freezed,
    Object? medium_square_crop = freezed,
    Object? full_size = freezed,
  }) {
    return _then(_value.copyWith(
      small_square_crop: freezed == small_square_crop
          ? _value.small_square_crop
          : small_square_crop // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      medium_square_crop: freezed == medium_square_crop
          ? _value.medium_square_crop
          : medium_square_crop // ignore: cast_nullable_to_non_nullable
              as String?,
      full_size: freezed == full_size
          ? _value.full_size
          : full_size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseImageResponseImplCopyWith<$Res>
    implements $BaseImageResponseCopyWith<$Res> {
  factory _$$BaseImageResponseImplCopyWith(_$BaseImageResponseImpl value,
          $Res Function(_$BaseImageResponseImpl) then) =
      __$$BaseImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? small_square_crop,
      String? thumbnail,
      String? medium_square_crop,
      String? full_size});
}

/// @nodoc
class __$$BaseImageResponseImplCopyWithImpl<$Res>
    extends _$BaseImageResponseCopyWithImpl<$Res, _$BaseImageResponseImpl>
    implements _$$BaseImageResponseImplCopyWith<$Res> {
  __$$BaseImageResponseImplCopyWithImpl(_$BaseImageResponseImpl _value,
      $Res Function(_$BaseImageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small_square_crop = freezed,
    Object? thumbnail = freezed,
    Object? medium_square_crop = freezed,
    Object? full_size = freezed,
  }) {
    return _then(_$BaseImageResponseImpl(
      small_square_crop: freezed == small_square_crop
          ? _value.small_square_crop
          : small_square_crop // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      medium_square_crop: freezed == medium_square_crop
          ? _value.medium_square_crop
          : medium_square_crop // ignore: cast_nullable_to_non_nullable
              as String?,
      full_size: freezed == full_size
          ? _value.full_size
          : full_size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseImageResponseImpl implements _BaseImageResponse {
  const _$BaseImageResponseImpl(
      {this.small_square_crop,
      this.thumbnail,
      this.medium_square_crop,
      this.full_size});

  factory _$BaseImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseImageResponseImplFromJson(json);

  @override
  final String? small_square_crop;
  @override
  final String? thumbnail;
  @override
  final String? medium_square_crop;
  @override
  final String? full_size;

  @override
  String toString() {
    return 'BaseImageResponse(small_square_crop: $small_square_crop, thumbnail: $thumbnail, medium_square_crop: $medium_square_crop, full_size: $full_size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseImageResponseImpl &&
            (identical(other.small_square_crop, small_square_crop) ||
                other.small_square_crop == small_square_crop) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.medium_square_crop, medium_square_crop) ||
                other.medium_square_crop == medium_square_crop) &&
            (identical(other.full_size, full_size) ||
                other.full_size == full_size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, small_square_crop, thumbnail, medium_square_crop, full_size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseImageResponseImplCopyWith<_$BaseImageResponseImpl> get copyWith =>
      __$$BaseImageResponseImplCopyWithImpl<_$BaseImageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseImageResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseImageResponse implements BaseImageResponse {
  const factory _BaseImageResponse(
      {final String? small_square_crop,
      final String? thumbnail,
      final String? medium_square_crop,
      final String? full_size}) = _$BaseImageResponseImpl;

  factory _BaseImageResponse.fromJson(Map<String, dynamic> json) =
      _$BaseImageResponseImpl.fromJson;

  @override
  String? get small_square_crop;
  @override
  String? get thumbnail;
  @override
  String? get medium_square_crop;
  @override
  String? get full_size;
  @override
  @JsonKey(ignore: true)
  _$$BaseImageResponseImplCopyWith<_$BaseImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
