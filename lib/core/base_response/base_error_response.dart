import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_error_response.freezed.dart';
part 'base_error_response.g.dart';

@freezed
class BaseErrorResponse with _$BaseErrorResponse {
  const factory BaseErrorResponse({
    required bool success,
    final String? errors,
    final String? message,
  }) = _BaseErrorResponse;

  factory BaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorResponseFromJson(json);
}