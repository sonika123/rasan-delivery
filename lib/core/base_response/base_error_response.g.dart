// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseErrorResponseImpl _$$BaseErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseErrorResponseImpl(
      success: json['success'] as bool,
      errors: json['errors'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BaseErrorResponseImplToJson(
        _$BaseErrorResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
      'message': instance.message,
    };
