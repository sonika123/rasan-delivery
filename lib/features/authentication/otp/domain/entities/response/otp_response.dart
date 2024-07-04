import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_response.freezed.dart';
part 'otp_response.g.dart';

@freezed
class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    bool? success,
    required OtpData data,
    String? message,
  }) = _OtpResponse;

  factory OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);
}

@freezed
class OtpData with _$OtpData {
  const factory OtpData({
    required String phone,
    required String token,
  }) = _OtpData;

  factory OtpData.fromJson(Map<String, dynamic> json) =>
      _$OtpDataFromJson(json);
}
