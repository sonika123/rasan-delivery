// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpResponseImpl _$$OtpResponseImplFromJson(Map<String, dynamic> json) =>
    _$OtpResponseImpl(
      success: json['success'] as bool?,
      data: OtpData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$OtpResponseImplToJson(_$OtpResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$OtpDataImpl _$$OtpDataImplFromJson(Map<String, dynamic> json) =>
    _$OtpDataImpl(
      phone: json['phone'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$OtpDataImplToJson(_$OtpDataImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'token': instance.token,
    };
