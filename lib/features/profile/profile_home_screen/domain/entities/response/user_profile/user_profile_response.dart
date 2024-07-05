import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rasan_delivery/features/profile/profile_home_screen/domain/entities/response/user_profile/user_location_response/user_location_response.dart';

import '../../../../../../../core/base_response/base_image_response/base_image_response.dart';

part 'user_profile_response.freezed.dart';
part 'user_profile_response.g.dart';


// ignore_for_file: non_constant_identifier_names
@freezed
class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    required bool success,
    String? message,
    required UserProfileData data,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    required int id,
    required bool is_submitted,
    required bool is_verified,
    required String phone,
    String? full_name,
    String? alternate_phone,
    String? date_of_birth,
    String? previous,
    BaseImageResponse? profile_picture,
    ShopInfo? shop,
    List<UserLocationData>? addresses,
    ExtraInfo? extra_info,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}

@freezed
class ShopInfo with _$ShopInfo {
  const factory ShopInfo({
    String? name,
    String? pan_vat_number,
    bool? is_submitted,
    bool? is_verified,
    BaseImageResponse? store_photo,
    BaseImageResponse? citizenship_front,
    BaseImageResponse? citizenship_back,
    BaseImageResponse? pan_vat_certificate,
    BaseImageResponse? house_rent_agreement,
    String? retailer_agreement,
  }) = _ShopInfo;

  factory ShopInfo.fromJson(Map<String, dynamic> json) =>
      _$ShopInfoFromJson(json);
}

@freezed
class ExtraInfo with _$ExtraInfo {
  const factory ExtraInfo({
    double? loyalty_points,
    double? cashback,
  }) = _ExtraInfo;

  factory ExtraInfo.fromJson(Map<String, dynamic> json) =>
      _$ExtraInfoFromJson(json);
}
