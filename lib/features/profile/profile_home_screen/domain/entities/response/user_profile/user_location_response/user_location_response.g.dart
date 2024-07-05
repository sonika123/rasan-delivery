// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLocationResponseImpl _$$UserLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLocationResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: UserLocationInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserLocationResponseImplToJson(
        _$UserLocationResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserLocationInfoImpl _$$UserLocationInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLocationInfoImpl(
      count: (json['count'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => UserLocationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserLocationInfoImplToJson(
        _$UserLocationInfoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };

_$UserLocationDataImpl _$$UserLocationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLocationDataImpl(
      id: (json['id'] as num).toInt(),
      province:
          LocationNameCode.fromJson(json['province'] as Map<String, dynamic>),
      city: LocationNameCode.fromJson(json['city'] as Map<String, dynamic>),
      area: LocationNameCode.fromJson(json['area'] as Map<String, dynamic>),
      is_default: json['is_default'] as bool?,
      detail_address: json['detail_address'] as String?,
      map_latitude: json['map_latitude'] as String?,
      map_longitude: json['map_longitude'] as String?,
    );

Map<String, dynamic> _$$UserLocationDataImplToJson(
        _$UserLocationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province': instance.province,
      'city': instance.city,
      'area': instance.area,
      'is_default': instance.is_default,
      'detail_address': instance.detail_address,
      'map_latitude': instance.map_latitude,
      'map_longitude': instance.map_longitude,
    };

_$LocationNameCodeImpl _$$LocationNameCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationNameCodeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LocationNameCodeImplToJson(
        _$LocationNameCodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
