import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_image_response.freezed.dart';
part 'base_image_response.g.dart';

/// @author: Sagar KC
/// @email: sagar.kc@fonepay.com
/// @created_at:  6/13/2022, Monday

// ignore_for_file: non_constant_identifier_names
@freezed
class BaseImageResponse with _$BaseImageResponse {
  const factory BaseImageResponse({
    String? small_square_crop,
    String? thumbnail,
    String? medium_square_crop,
    String? full_size,
  }) = _BaseImageResponse;

  factory BaseImageResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseImageResponseFromJson(json);
}
