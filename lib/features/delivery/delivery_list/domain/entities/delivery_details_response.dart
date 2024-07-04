import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_details_response.g.dart';

part 'delivery_details_response.freezed.dart';

@freezed
class DeliveryDetailsResponse with _$DeliveryDetailsResponse {
  const factory DeliveryDetailsResponse({
    required bool success,
    required DeliveryDetailsData data,
  }) = _DeliveryDetailsResponse;

  factory DeliveryDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailsResponseFromJson(json);
}

@freezed
class DeliveryDetailsData with _$DeliveryDetailsData {
  const factory DeliveryDetailsData({
    required int id,
    required User user,
    required Vehicle vehicle,
    List<OrdersListData>? orders,
  }) = _DeliveryDetailsData;

  factory DeliveryDetailsData.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailsDataFromJson(json);
}

@freezed
class User with _$User {
  const factory User({String? username, bool? is_active}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    int? id,
    String? name,
    String? number,
    String? vehicle_type,
    }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);
}

@freezed
class OrdersListData with _$OrdersListData {
  const factory OrdersListData({
    required int id,
    int? user_profile_id,
    String? phone,
    String? status,
    String? type,
    String? customer_name,
    String? shop_name,
    ShippingAddressDetails? shipping_address_details,
    String? total_amount,
    String? comment,
    String? preferable_delivery_time,
    String? delivery_status,
    bool? order_confirmation,
  }) = _OrdersListData;

  factory OrdersListData.fromJson(Map<String, dynamic> json) =>
      _$OrdersListDataFromJson(json);
}

@freezed
class ShippingAddressDetails with _$ShippingAddressDetails {
  const factory ShippingAddressDetails({
    required int id,
    bool? is_default,
    ProvinceCityArea? province,
    ProvinceCityArea? city,
    ProvinceCityArea? area,
    String? detail_address,
    String? map_latitude,
    String? map_longitude,
  }) = _ShippingAddressDetails;

  factory ShippingAddressDetails.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressDetailsFromJson(json);
}

@freezed
class ProvinceCityArea with _$ProvinceCityArea {
  const factory ProvinceCityArea({
    required int id,
    String? name,
  }) = _ProvinceCityArea;

  factory ProvinceCityArea.fromJson(Map<String, dynamic> json) =>
      _$ProvinceCityAreaFromJson(json);
}
