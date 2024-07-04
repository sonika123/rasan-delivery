import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_success_response.freezed.dart';
part 'base_success_response.g.dart';

@freezed
class BaseSuccessResponse with _$BaseSuccessResponse {
  const factory BaseSuccessResponse({
    required bool success,
    Map<String, dynamic>? data,
    String? message,
  }) = _BaseSuccessResponse;

  factory BaseSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseSuccessResponseFromJson(json);
}
