// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/base_response/base_image_response/base_image_response.dart';

part 'stories_and_video_response.freezed.dart';
part 'stories_and_video_response.g.dart';

/// @author: Sagar KC
/// @email: sagar.kc@fonepay.com
/// @created_at:  7/15/2022, Friday

@freezed
class StoriesAndVideoResponse with _$StoriesAndVideoResponse {
  const factory StoriesAndVideoResponse({
    required bool success,
    String? message,
    required StoriesAndVideoData data,
  }) = _StoriesAndVideoResponse;

  factory StoriesAndVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$StoriesAndVideoResponseFromJson(json);
}

@freezed
class StoriesAndVideoData with _$StoriesAndVideoData {
  const factory StoriesAndVideoData({
    required List<StoriesResponse> stories,
    required List<VideoResponse> videos,
  }) = _StoriesAndVideoData;

  factory StoriesAndVideoData.fromJson(Map<String, dynamic> json) =>
      _$StoriesAndVideoDataFromJson(json);
}

@freezed
class StoriesResponse with _$StoriesResponse {
  const factory StoriesResponse(
      {int? id,
      String? full_name,
      String? shop_name,
      String? content,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image}) = _StoriesResponse;

  factory StoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$StoriesResponseFromJson(json);
}

@freezed
class VideoResponse with _$VideoResponse {
  const factory VideoResponse(
      {int? id,
      required String video_url,
      bool? is_published,
      String? published_at,
      BaseImageResponse? image}) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
class NotificationUser with _$NotificationUser {
  const factory NotificationUser({
    String? user,
  }) = _NotificationUser;

  factory NotificationUser.fromJson(Map<String, dynamic> json) =>
      _$NotificationUserFromJson(json);
}
