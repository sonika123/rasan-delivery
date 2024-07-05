import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../../core/base_response/base_error_response.dart';
import '../../../../../core/base_response/base_success_response.dart';
import '../../../../../core/network_services/endpoints/endpoints.dart';

abstract class LogOutRepository {
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> logout();
}

class LogOutRepositoryImpl implements LogOutRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> logout() async {
    try {
      final response = await _dio.post(
        Endpoints.baseUrl + Endpoints.logout,
      );
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
      return Left(BaseErrorResponse(
        success: false,
        message: 'something_went_wrong'.tr,
      ));
    }
  }
}
