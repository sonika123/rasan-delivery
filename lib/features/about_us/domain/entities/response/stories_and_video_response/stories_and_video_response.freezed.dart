// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_and_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoriesAndVideoResponse _$StoriesAndVideoResponseFromJson(
    Map<String, dynamic> json) {
  return _StoriesAndVideoResponse.fromJson(json);
}

/// @nodoc
mixin _$StoriesAndVideoResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StoriesAndVideoData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesAndVideoResponseCopyWith<StoriesAndVideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesAndVideoResponseCopyWith<$Res> {
  factory $StoriesAndVideoResponseCopyWith(StoriesAndVideoResponse value,
          $Res Function(StoriesAndVideoResponse) then) =
      _$StoriesAndVideoResponseCopyWithImpl<$Res, StoriesAndVideoResponse>;
  @useResult
  $Res call({bool success, String? message, StoriesAndVideoData data});

  $StoriesAndVideoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StoriesAndVideoResponseCopyWithImpl<$Res,
        $Val extends StoriesAndVideoResponse>
    implements $StoriesAndVideoResponseCopyWith<$Res> {
  _$StoriesAndVideoResponseCopyWithImpl(this._value, this._then);

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
              as StoriesAndVideoData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesAndVideoDataCopyWith<$Res> get data {
    return $StoriesAndVideoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoriesAndVideoResponseCopyWith<$Res>
    implements $StoriesAndVideoResponseCopyWith<$Res> {
  factory _$$_StoriesAndVideoResponseCopyWith(_$_StoriesAndVideoResponse value,
          $Res Function(_$_StoriesAndVideoResponse) then) =
      __$$_StoriesAndVideoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, StoriesAndVideoData data});

  @override
  $StoriesAndVideoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_StoriesAndVideoResponseCopyWithImpl<$Res>
    extends _$StoriesAndVideoResponseCopyWithImpl<$Res,
        _$_StoriesAndVideoResponse>
    implements _$$_StoriesAndVideoResponseCopyWith<$Res> {
  __$$_StoriesAndVideoResponseCopyWithImpl(_$_StoriesAndVideoResponse _value,
      $Res Function(_$_StoriesAndVideoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$_StoriesAndVideoResponse(
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
              as StoriesAndVideoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoriesAndVideoResponse implements _StoriesAndVideoResponse {
  const _$_StoriesAndVideoResponse(
      {required this.success, this.message, required this.data});

  factory _$_StoriesAndVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesAndVideoResponseFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final StoriesAndVideoData data;

  @override
  String toString() {
    return 'StoriesAndVideoResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesAndVideoResponse &&
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
  _$$_StoriesAndVideoResponseCopyWith<_$_StoriesAndVideoResponse>
      get copyWith =>
          __$$_StoriesAndVideoResponseCopyWithImpl<_$_StoriesAndVideoResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesAndVideoResponseToJson(
      this,
    );
  }
}

abstract class _StoriesAndVideoResponse implements StoriesAndVideoResponse {
  const factory _StoriesAndVideoResponse(
      {required final bool success,
      final String? message,
      required final StoriesAndVideoData data}) = _$_StoriesAndVideoResponse;

  factory _StoriesAndVideoResponse.fromJson(Map<String, dynamic> json) =
      _$_StoriesAndVideoResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  StoriesAndVideoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesAndVideoResponseCopyWith<_$_StoriesAndVideoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

StoriesAndVideoData _$StoriesAndVideoDataFromJson(Map<String, dynamic> json) {
  return _StoriesAndVideoData.fromJson(json);
}

/// @nodoc
mixin _$StoriesAndVideoData {
  List<StoriesResponse> get stories => throw _privateConstructorUsedError;
  List<VideoResponse> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesAndVideoDataCopyWith<StoriesAndVideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesAndVideoDataCopyWith<$Res> {
  factory $StoriesAndVideoDataCopyWith(
          StoriesAndVideoData value, $Res Function(StoriesAndVideoData) then) =
      _$StoriesAndVideoDataCopyWithImpl<$Res, StoriesAndVideoData>;
  @useResult
  $Res call({List<StoriesResponse> stories, List<VideoResponse> videos});
}

/// @nodoc
class _$StoriesAndVideoDataCopyWithImpl<$Res, $Val extends StoriesAndVideoData>
    implements $StoriesAndVideoDataCopyWith<$Res> {
  _$StoriesAndVideoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoriesResponse>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoriesAndVideoDataCopyWith<$Res>
    implements $StoriesAndVideoDataCopyWith<$Res> {
  factory _$$_StoriesAndVideoDataCopyWith(_$_StoriesAndVideoData value,
          $Res Function(_$_StoriesAndVideoData) then) =
      __$$_StoriesAndVideoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoriesResponse> stories, List<VideoResponse> videos});
}

/// @nodoc
class __$$_StoriesAndVideoDataCopyWithImpl<$Res>
    extends _$StoriesAndVideoDataCopyWithImpl<$Res, _$_StoriesAndVideoData>
    implements _$$_StoriesAndVideoDataCopyWith<$Res> {
  __$$_StoriesAndVideoDataCopyWithImpl(_$_StoriesAndVideoData _value,
      $Res Function(_$_StoriesAndVideoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
    Object? videos = null,
  }) {
    return _then(_$_StoriesAndVideoData(
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoriesResponse>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoriesAndVideoData implements _StoriesAndVideoData {
  const _$_StoriesAndVideoData(
      {required final List<StoriesResponse> stories,
      required final List<VideoResponse> videos})
      : _stories = stories,
        _videos = videos;

  factory _$_StoriesAndVideoData.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesAndVideoDataFromJson(json);

  final List<StoriesResponse> _stories;
  @override
  List<StoriesResponse> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  final List<VideoResponse> _videos;
  @override
  List<VideoResponse> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'StoriesAndVideoData(stories: $stories, videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesAndVideoData &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stories),
      const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesAndVideoDataCopyWith<_$_StoriesAndVideoData> get copyWith =>
      __$$_StoriesAndVideoDataCopyWithImpl<_$_StoriesAndVideoData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesAndVideoDataToJson(
      this,
    );
  }
}

abstract class _StoriesAndVideoData implements StoriesAndVideoData {
  const factory _StoriesAndVideoData(
      {required final List<StoriesResponse> stories,
      required final List<VideoResponse> videos}) = _$_StoriesAndVideoData;

  factory _StoriesAndVideoData.fromJson(Map<String, dynamic> json) =
      _$_StoriesAndVideoData.fromJson;

  @override
  List<StoriesResponse> get stories;
  @override
  List<VideoResponse> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesAndVideoDataCopyWith<_$_StoriesAndVideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

StoriesResponse _$StoriesResponseFromJson(Map<String, dynamic> json) {
  return _StoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$StoriesResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get shop_name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  bool? get is_published => throw _privateConstructorUsedError;
  String? get published_at => throw _privateConstructorUsedError;
  BaseImageResponse? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesResponseCopyWith<StoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesResponseCopyWith<$Res> {
  factory $StoriesResponseCopyWith(
          StoriesResponse value, $Res Function(StoriesResponse) then) =
      _$StoriesResponseCopyWithImpl<$Res, StoriesResponse>;
  @useResult
  $Res call(
      {int? id,
      String? full_name,
      String? shop_name,
      String? content,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image});

  $BaseImageResponseCopyWith<$Res>? get image;
}

/// @nodoc
class _$StoriesResponseCopyWithImpl<$Res, $Val extends StoriesResponse>
    implements $StoriesResponseCopyWith<$Res> {
  _$StoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? full_name = freezed,
    Object? shop_name = freezed,
    Object? content = freezed,
    Object? is_published = freezed,
    Object? published_at = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shop_name: freezed == shop_name
          ? _value.shop_name
          : shop_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool?,
      published_at: freezed == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoriesResponseCopyWith<$Res>
    implements $StoriesResponseCopyWith<$Res> {
  factory _$$_StoriesResponseCopyWith(
          _$_StoriesResponse value, $Res Function(_$_StoriesResponse) then) =
      __$$_StoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? full_name,
      String? shop_name,
      String? content,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image});

  @override
  $BaseImageResponseCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_StoriesResponseCopyWithImpl<$Res>
    extends _$StoriesResponseCopyWithImpl<$Res, _$_StoriesResponse>
    implements _$$_StoriesResponseCopyWith<$Res> {
  __$$_StoriesResponseCopyWithImpl(
      _$_StoriesResponse _value, $Res Function(_$_StoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? full_name = freezed,
    Object? shop_name = freezed,
    Object? content = freezed,
    Object? is_published = freezed,
    Object? published_at = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_StoriesResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shop_name: freezed == shop_name
          ? _value.shop_name
          : shop_name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool?,
      published_at: freezed == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoriesResponse implements _StoriesResponse {
  const _$_StoriesResponse(
      {this.id,
      this.full_name,
      this.shop_name,
      this.content,
      this.is_published,
      this.published_at,
      this.image});

  factory _$_StoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? full_name;
  @override
  final String? shop_name;
  @override
  final String? content;
  @override
  final bool? is_published;
  @override
  final String? published_at;
  @override
  final BaseImageResponse? image;

  @override
  String toString() {
    return 'StoriesResponse(id: $id, full_name: $full_name, shop_name: $shop_name, content: $content, is_published: $is_published, published_at: $published_at, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.shop_name, shop_name) ||
                other.shop_name == shop_name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.is_published, is_published) ||
                other.is_published == is_published) &&
            (identical(other.published_at, published_at) ||
                other.published_at == published_at) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, full_name, shop_name,
      content, is_published, published_at, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesResponseCopyWith<_$_StoriesResponse> get copyWith =>
      __$$_StoriesResponseCopyWithImpl<_$_StoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesResponseToJson(
      this,
    );
  }
}

abstract class _StoriesResponse implements StoriesResponse {
  const factory _StoriesResponse(
      {final int? id,
      final String? full_name,
      final String? shop_name,
      final String? content,
      final bool? is_published,
      final String? published_at,
      final BaseImageResponse? image}) = _$_StoriesResponse;

  factory _StoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_StoriesResponse.fromJson;

  @override
  int? get id;
  @override
  String? get full_name;
  @override
  String? get shop_name;
  @override
  String? get content;
  @override
  bool? get is_published;
  @override
  String? get published_at;
  @override
  BaseImageResponse? get image;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesResponseCopyWith<_$_StoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoResponse {
  int? get id => throw _privateConstructorUsedError;
  String get video_url => throw _privateConstructorUsedError;
  bool? get is_published => throw _privateConstructorUsedError;
  String? get published_at => throw _privateConstructorUsedError;
  BaseImageResponse? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res, VideoResponse>;
  @useResult
  $Res call(
      {int? id,
      String video_url,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image});

  $BaseImageResponseCopyWith<$Res>? get image;
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res, $Val extends VideoResponse>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video_url = null,
    Object? is_published = freezed,
    Object? published_at = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video_url: null == video_url
          ? _value.video_url
          : video_url // ignore: cast_nullable_to_non_nullable
              as String,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool?,
      published_at: freezed == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseImageResponseCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $BaseImageResponseCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideoResponseCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$$_VideoResponseCopyWith(
          _$_VideoResponse value, $Res Function(_$_VideoResponse) then) =
      __$$_VideoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String video_url,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image});

  @override
  $BaseImageResponseCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_VideoResponseCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res, _$_VideoResponse>
    implements _$$_VideoResponseCopyWith<$Res> {
  __$$_VideoResponseCopyWithImpl(
      _$_VideoResponse _value, $Res Function(_$_VideoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video_url = null,
    Object? is_published = freezed,
    Object? published_at = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_VideoResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video_url: null == video_url
          ? _value.video_url
          : video_url // ignore: cast_nullable_to_non_nullable
              as String,
      is_published: freezed == is_published
          ? _value.is_published
          : is_published // ignore: cast_nullable_to_non_nullable
              as bool?,
      published_at: freezed == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as BaseImageResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponse implements _VideoResponse {
  const _$_VideoResponse(
      {this.id,
      required this.video_url,
      this.is_published,
      this.published_at,
      this.image});

  factory _$_VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResponseFromJson(json);

  @override
  final int? id;
  @override
  final String video_url;
  @override
  final bool? is_published;
  @override
  final String? published_at;
  @override
  final BaseImageResponse? image;

  @override
  String toString() {
    return 'VideoResponse(id: $id, video_url: $video_url, is_published: $is_published, published_at: $published_at, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video_url, video_url) ||
                other.video_url == video_url) &&
            (identical(other.is_published, is_published) ||
                other.is_published == is_published) &&
            (identical(other.published_at, published_at) ||
                other.published_at == published_at) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, video_url, is_published, published_at, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoResponseCopyWith<_$_VideoResponse> get copyWith =>
      __$$_VideoResponseCopyWithImpl<_$_VideoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResponseToJson(
      this,
    );
  }
}

abstract class _VideoResponse implements VideoResponse {
  const factory _VideoResponse(
      {final int? id,
      required final String video_url,
      final bool? is_published,
      final String? published_at,
      final BaseImageResponse? image}) = _$_VideoResponse;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$_VideoResponse.fromJson;

  @override
  int? get id;
  @override
  String get video_url;
  @override
  bool? get is_published;
  @override
  String? get published_at;
  @override
  BaseImageResponse? get image;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResponseCopyWith<_$_VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationUser _$NotificationUserFromJson(Map<String, dynamic> json) {
  return _NotificationUser.fromJson(json);
}

/// @nodoc
mixin _$NotificationUser {
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationUserCopyWith<NotificationUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUserCopyWith<$Res> {
  factory $NotificationUserCopyWith(
          NotificationUser value, $Res Function(NotificationUser) then) =
      _$NotificationUserCopyWithImpl<$Res, NotificationUser>;
  @useResult
  $Res call({String? user});
}

/// @nodoc
class _$NotificationUserCopyWithImpl<$Res, $Val extends NotificationUser>
    implements $NotificationUserCopyWith<$Res> {
  _$NotificationUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationUserCopyWith<$Res>
    implements $NotificationUserCopyWith<$Res> {
  factory _$$_NotificationUserCopyWith(
          _$_NotificationUser value, $Res Function(_$_NotificationUser) then) =
      __$$_NotificationUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? user});
}

/// @nodoc
class __$$_NotificationUserCopyWithImpl<$Res>
    extends _$NotificationUserCopyWithImpl<$Res, _$_NotificationUser>
    implements _$$_NotificationUserCopyWith<$Res> {
  __$$_NotificationUserCopyWithImpl(
      _$_NotificationUser _value, $Res Function(_$_NotificationUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_NotificationUser(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationUser implements _NotificationUser {
  const _$_NotificationUser({this.user});

  factory _$_NotificationUser.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationUserFromJson(json);

  @override
  final String? user;

  @override
  String toString() {
    return 'NotificationUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationUser &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationUserCopyWith<_$_NotificationUser> get copyWith =>
      __$$_NotificationUserCopyWithImpl<_$_NotificationUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationUserToJson(
      this,
    );
  }
}

abstract class _NotificationUser implements NotificationUser {
  const factory _NotificationUser({final String? user}) = _$_NotificationUser;

  factory _NotificationUser.fromJson(Map<String, dynamic> json) =
      _$_NotificationUser.fromJson;

  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationUserCopyWith<_$_NotificationUser> get copyWith =>
      throw _privateConstructorUsedError;
}
