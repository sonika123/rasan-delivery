import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliveries_location_response.g.dart';
part 'deliveries_location_response.freezed.dart';

@freezed
class DeliveriesLocationResponse with _$DeliveriesLocationResponse {
  const factory DeliveriesLocationResponse({
    required bool success,
    required String message,
    required DeliveriesLocationData data,
  }) = _DeliveriesLocationResponse;

  factory DeliveriesLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesLocationResponseFromJson(json);
}

@freezed
class DeliveriesLocationData with _$DeliveriesLocationData {
  const factory DeliveriesLocationData({
    required int id,
    int? area,
    int? city,
    int? province,
    String? map_latitude,
    String? map_longitude,
    String? detail_address,
  }) = _DeliveriesLocationData;

  factory DeliveriesLocationData.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesLocationDataFromJson(json);
}