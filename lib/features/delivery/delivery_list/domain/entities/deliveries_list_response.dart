import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliveries_list_response.g.dart';
part 'deliveries_list_response.freezed.dart';

@freezed
class DeliveriesListResponse with _$DeliveriesListResponse {
  const factory DeliveriesListResponse({
    required bool success,
    required List<DeliveriesData> data,
  }) = _DeliveriesListResponse;

  factory DeliveriesListResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesListResponseFromJson(json);
}

@freezed
class DeliveriesData with _$DeliveriesData {
  const factory DeliveriesData({
    required int id,
    int? user,
    int? vehicle,
    List<int>? orders,
  }) = _DeliveriesData;

  factory DeliveriesData.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesDataFromJson(json);
}