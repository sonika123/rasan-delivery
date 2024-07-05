// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_and_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoriesAndVideoResponse _$$_StoriesAndVideoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StoriesAndVideoResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: StoriesAndVideoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoriesAndVideoResponseToJson(
        _$_StoriesAndVideoResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$_StoriesAndVideoData _$$_StoriesAndVideoDataFromJson(
        Map<String, dynamic> json) =>
    _$_StoriesAndVideoData(
      stories: (json['stories'] as List<dynamic>)
          .map((e) => StoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => VideoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoriesAndVideoDataToJson(
        _$_StoriesAndVideoData instance) =>
    <String, dynamic>{
      'stories': instance.stories,
      'videos': instance.videos,
    };

_$_StoriesResponse _$$_StoriesResponseFromJson(Map<String, dynamic> json) =>
    _$_StoriesResponse(
      id: json['id'] as int?,
      full_name: json['full_name'] as String?,
      shop_name: json['shop_name'] as String?,
      content: json['content'] as String?,
      is_published: json['is_published'] as bool?,
      published_at: json['published_at'] as String?,
      image: json['image'] == null
          ? null
          : BaseImageResponse.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoriesResponseToJson(_$_StoriesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'shop_name': instance.shop_name,
      'content': instance.content,
      'is_published': instance.is_published,
      'published_at': instance.published_at,
      'image': instance.image,
    };

_$_VideoResponse _$$_VideoResponseFromJson(Map<String, dynamic> json) =>
    _$_VideoResponse(
      id: json['id'] as int?,
      video_url: json['video_url'] as String,
      is_published: json['is_published'] as bool?,
      published_at: json['published_at'] as String?,
      image: json['image'] == null
          ? null
          : BaseImageResponse.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideoResponseToJson(_$_VideoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'video_url': instance.video_url,
      'is_published': instance.is_published,
      'published_at': instance.published_at,
      'image': instance.image,
    };

_$_NotificationUser _$$_NotificationUserFromJson(Map<String, dynamic> json) =>
    _$_NotificationUser(
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_NotificationUserToJson(_$_NotificationUser instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
