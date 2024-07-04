// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseSuccessResponseImpl _$$BaseSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseSuccessResponseImpl(
      success: json['success'] as bool,
      data: json['data'] as Map<String, dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BaseSuccessResponseImplToJson(
        _$BaseSuccessResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
