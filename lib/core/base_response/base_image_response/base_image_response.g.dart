// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseImageResponseImpl _$$BaseImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseImageResponseImpl(
      small_square_crop: json['small_square_crop'] as String?,
      thumbnail: json['thumbnail'] as String?,
      medium_square_crop: json['medium_square_crop'] as String?,
      full_size: json['full_size'] as String?,
    );

Map<String, dynamic> _$$BaseImageResponseImplToJson(
        _$BaseImageResponseImpl instance) =>
    <String, dynamic>{
      'small_square_crop': instance.small_square_crop,
      'thumbnail': instance.thumbnail,
      'medium_square_crop': instance.medium_square_crop,
      'full_size': instance.full_size,
    };
