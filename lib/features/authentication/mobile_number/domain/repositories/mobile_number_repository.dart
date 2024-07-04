import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../../core/base_response/base_error_response.dart';
import '../../../../../core/base_response/base_success_response.dart';
import '../../../../../core/network_services/endpoints/endpoints.dart';

abstract class MobileNumberRepository {
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> requestOtp(
      final String phoneNumber);
}

class MobileNumberRepositoryImpl implements MobileNumberRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> requestOtp(
      final String phoneNumber) async {
    try {
      final response = await _dio.post(Endpoints.baseUrl + Endpoints.requestOtp,
          data: {"phone": phoneNumber});
      final decodedData = response.data;
      if (decodedData["success"] == true) {
        return Right(BaseSuccessResponse.fromJson(decodedData));
      } else {
        return Left(BaseErrorResponse.fromJson(decodedData));
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return Left(BaseErrorResponse(
          success: false,
          message: 'no_internet'.tr,
        ));
      }
      return Left(BaseErrorResponse(
        success: false,
        message: e.message,
      ));
    } catch (e) {
      return const Left(BaseErrorResponse(
        success: false,
      ));
    }
  }
}
