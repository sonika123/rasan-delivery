// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveriesListResponseImpl _$$DeliveriesListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveriesListResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => DeliveriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeliveriesListResponseImplToJson(
        _$DeliveriesListResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DeliveriesDataImpl _$$DeliveriesDataImplFromJson(Map<String, dynamic> json) =>
    _$DeliveriesDataImpl(
      id: (json['id'] as num).toInt(),
      user: (json['user'] as num?)?.toInt(),
      vehicle: (json['vehicle'] as num?)?.toInt(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$DeliveriesDataImplToJson(
        _$DeliveriesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'vehicle': instance.vehicle,
      'orders': instance.orders,
    };
