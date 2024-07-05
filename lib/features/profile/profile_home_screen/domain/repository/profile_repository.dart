import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../../../core/base_response/base_error_response.dart';
import '../../../../../core/network_services/endpoints/endpoints.dart';
import '../entities/response/user_profile/user_profile_response.dart';

abstract class ProfileRepository {
  Future<Either<BaseErrorResponse, UserProfileResponse>> fetchUserProfile();
}

class ProfileRepositoryImpl implements ProfileRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, UserProfileResponse>>
      fetchUserProfile() async {
    try {
      final response = await _dio.get(
        Endpoints.baseUrl + Endpoints.userProfile,
      );
      if (response.data['success'] == true) {
        return Right(UserProfileResponse.fromJson(response.data));
      } else {
        return Left(BaseErrorResponse.fromJson(response.data));
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
