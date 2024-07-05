import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_location_response.freezed.dart';
part 'user_location_response.g.dart';

/// @author: Sagar KC
/// @email: sagar.kc@fonepay.com
/// @created_at:  6/13/2022, Monday

// ignore_for_file: non_constant_identifier_names
@freezed
class UserLocationResponse with _$UserLocationResponse {
  const factory UserLocationResponse({
    required bool success,
    String? message,
    required UserLocationInfo data,
  }) = _UserLocationResponse;

  factory UserLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLocationResponseFromJson(json);
}

@freezed
class UserLocationInfo with _$UserLocationInfo {
  const factory UserLocationInfo({
    int? count,
    required List<UserLocationData> results,
  }) = _UserLocationInfo;

  factory UserLocationInfo.fromJson(Map<String, dynamic> json) =>
      _$UserLocationInfoFromJson(json);
}

@freezed
class UserLocationData with _$UserLocationData {
  const factory UserLocationData({
    required int id,
    required LocationNameCode province,
    required LocationNameCode city,
    required LocationNameCode area,
    bool? is_default,
    String? detail_address,
    String? map_latitude,
    String? map_longitude,
  }) = _UserLocationData;

  factory UserLocationData.fromJson(Map<String, dynamic> json) =>
      _$UserLocationDataFromJson(json);
}

@freezed
class LocationNameCode with _$LocationNameCode {
  const factory LocationNameCode({
    required int id,
    required String name,
  }) = _LocationNameCode;

  factory LocationNameCode.fromJson(Map<String, dynamic> json) =>
      _$LocationNameCodeFromJson(json);
}
