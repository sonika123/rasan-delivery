// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      id: (json['id'] as num).toInt(),
      is_submitted: json['is_submitted'] as bool,
      is_verified: json['is_verified'] as bool,
      phone: json['phone'] as String,
      full_name: json['full_name'] as String?,
      alternate_phone: json['alternate_phone'] as String?,
      date_of_birth: json['date_of_birth'] as String?,
      previous: json['previous'] as String?,
      profile_picture: json['profile_picture'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['profile_picture'] as Map<String, dynamic>),
      shop: json['shop'] == null
          ? null
          : ShopInfo.fromJson(json['shop'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => UserLocationData.fromJson(e as Map<String, dynamic>))
          .toList(),
      extra_info: json['extra_info'] == null
          ? null
          : ExtraInfo.fromJson(json['extra_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_submitted': instance.is_submitted,
      'is_verified': instance.is_verified,
      'phone': instance.phone,
      'full_name': instance.full_name,
      'alternate_phone': instance.alternate_phone,
      'date_of_birth': instance.date_of_birth,
      'previous': instance.previous,
      'profile_picture': instance.profile_picture,
      'shop': instance.shop,
      'addresses': instance.addresses,
      'extra_info': instance.extra_info,
    };

_$ShopInfoImpl _$$ShopInfoImplFromJson(Map<String, dynamic> json) =>
    _$ShopInfoImpl(
      name: json['name'] as String?,
      pan_vat_number: json['pan_vat_number'] as String?,
      is_submitted: json['is_submitted'] as bool?,
      is_verified: json['is_verified'] as bool?,
      store_photo: json['store_photo'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['store_photo'] as Map<String, dynamic>),
      citizenship_front: json['citizenship_front'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['citizenship_front'] as Map<String, dynamic>),
      citizenship_back: json['citizenship_back'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['citizenship_back'] as Map<String, dynamic>),
      pan_vat_certificate: json['pan_vat_certificate'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['pan_vat_certificate'] as Map<String, dynamic>),
      house_rent_agreement: json['house_rent_agreement'] == null
          ? null
          : BaseImageResponse.fromJson(
              json['house_rent_agreement'] as Map<String, dynamic>),
      retailer_agreement: json['retailer_agreement'] as String?,
    );

Map<String, dynamic> _$$ShopInfoImplToJson(_$ShopInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pan_vat_number': instance.pan_vat_number,
      'is_submitted': instance.is_submitted,
      'is_verified': instance.is_verified,
      'store_photo': instance.store_photo,
      'citizenship_front': instance.citizenship_front,
      'citizenship_back': instance.citizenship_back,
      'pan_vat_certificate': instance.pan_vat_certificate,
      'house_rent_agreement': instance.house_rent_agreement,
      'retailer_agreement': instance.retailer_agreement,
    };

_$ExtraInfoImpl _$$ExtraInfoImplFromJson(Map<String, dynamic> json) =>
    _$ExtraInfoImpl(
      loyalty_points: (json['loyalty_points'] as num?)?.toDouble(),
      cashback: (json['cashback'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ExtraInfoImplToJson(_$ExtraInfoImpl instance) =>
    <String, dynamic>{
      'loyalty_points': instance.loyalty_points,
      'cashback': instance.cashback,
    };
