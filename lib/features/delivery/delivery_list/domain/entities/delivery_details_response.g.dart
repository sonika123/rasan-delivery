// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryDetailsResponseImpl _$$DeliveryDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryDetailsResponseImpl(
      success: json['success'] as bool,
      data: DeliveryDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryDetailsResponseImplToJson(
        _$DeliveryDetailsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DeliveryDetailsDataImpl _$$DeliveryDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryDetailsDataImpl(
      id: (json['id'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrdersListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeliveryDetailsDataImplToJson(
        _$DeliveryDetailsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'vehicle': instance.vehicle,
      'orders': instance.orders,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] as String?,
      is_active: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'is_active': instance.is_active,
    };

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      number: json['number'] as String?,
      vehicle_type: json['vehicle_type'] as String?,
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'vehicle_type': instance.vehicle_type,
    };

_$OrdersListDataImpl _$$OrdersListDataImplFromJson(Map<String, dynamic> json) =>
    _$OrdersListDataImpl(
      id: (json['id'] as num).toInt(),
      user_profile_id: (json['user_profile_id'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      customer_name: json['customer_name'] as String?,
      shop_name: json['shop_name'] as String?,
      shipping_address_details: json['shipping_address_details'] == null
          ? null
          : ShippingAddressDetails.fromJson(
              json['shipping_address_details'] as Map<String, dynamic>),
      total_amount: json['total_amount'] as String?,
      comment: json['comment'] as String?,
      preferable_delivery_time: json['preferable_delivery_time'] as String?,
      delivery_status: json['delivery_status'] as String?,
      order_confirmation: json['order_confirmation'] as bool?,
    );

Map<String, dynamic> _$$OrdersListDataImplToJson(
        _$OrdersListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_profile_id': instance.user_profile_id,
      'phone': instance.phone,
      'status': instance.status,
      'type': instance.type,
      'customer_name': instance.customer_name,
      'shop_name': instance.shop_name,
      'shipping_address_details': instance.shipping_address_details,
      'total_amount': instance.total_amount,
      'comment': instance.comment,
      'preferable_delivery_time': instance.preferable_delivery_time,
      'delivery_status': instance.delivery_status,
      'order_confirmation': instance.order_confirmation,
    };

_$ShippingAddressDetailsImpl _$$ShippingAddressDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressDetailsImpl(
      id: (json['id'] as num).toInt(),
      is_default: json['is_default'] as bool?,
      province: json['province'] == null
          ? null
          : ProvinceCityArea.fromJson(json['province'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : ProvinceCityArea.fromJson(json['city'] as Map<String, dynamic>),
      area: json['area'] == null
          ? null
          : ProvinceCityArea.fromJson(json['area'] as Map<String, dynamic>),
      detail_address: json['detail_address'] as String?,
      map_latitude: json['map_latitude'] as String?,
      map_longitude: json['map_longitude'] as String?,
    );

Map<String, dynamic> _$$ShippingAddressDetailsImplToJson(
        _$ShippingAddressDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_default': instance.is_default,
      'province': instance.province,
      'city': instance.city,
      'area': instance.area,
      'detail_address': instance.detail_address,
      'map_latitude': instance.map_latitude,
      'map_longitude': instance.map_longitude,
    };

_$ProvinceCityAreaImpl _$$ProvinceCityAreaImplFromJson(
        Map<String, dynamic> json) =>
    _$ProvinceCityAreaImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ProvinceCityAreaImplToJson(
        _$ProvinceCityAreaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
