import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../../core/base_response/base_error_response.dart';
import '../../../../../core/network_services/endpoints/endpoints.dart';
import '../entities/response/otp_response.dart';

abstract class OtpRepository {
  Future<Either<BaseErrorResponse, OtpResponse>> login(
      String phoneNumber, String otp);
}

class OtpRepositoryImpl implements OtpRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, OtpResponse>> login(
      String phoneNumber, String otp) async {
    try {
      final response = await _dio.post(Endpoints.baseUrl + Endpoints.login,
          data: {'phone': phoneNumber, 'pin': otp});
      final decodedData = response.data;
      if (decodedData["success"] == true) {
        return Right(OtpResponse.fromJson(decodedData));
      } else {
        return Left(BaseErrorResponse.fromJson(decodedData));
      }
    } on DioError catch (e) {
      return Left(BaseErrorResponse(
        success: false,
        message: e.response?.data['message'] ?? '-',
      ));
    } catch (e) {
      return Left(BaseErrorResponse(
        success: false,
        message: 'something_went_wrong'.tr,
      ));
    }
  }
}
