// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveriesLocationResponseImpl _$$DeliveriesLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveriesLocationResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data:
          DeliveriesLocationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveriesLocationResponseImplToJson(
        _$DeliveriesLocationResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DeliveriesLocationDataImpl _$$DeliveriesLocationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveriesLocationDataImpl(
      id: (json['id'] as num).toInt(),
      area: (json['area'] as num?)?.toInt(),
      city: (json['city'] as num?)?.toInt(),
      province: (json['province'] as num?)?.toInt(),
      map_latitude: json['map_latitude'] as String?,
      map_longitude: json['map_longitude'] as String?,
      detail_address: json['detail_address'] as String?,
    );

Map<String, dynamic> _$$DeliveriesLocationDataImplToJson(
        _$DeliveriesLocationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'area': instance.area,
      'city': instance.city,
      'province': instance.province,
      'map_latitude': instance.map_latitude,
      'map_longitude': instance.map_longitude,
      'detail_address': instance.detail_address,
    };
