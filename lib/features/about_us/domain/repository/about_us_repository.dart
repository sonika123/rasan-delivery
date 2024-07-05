import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../core/base_response/base_error_response.dart';
import '../../../../core/network_services/endpoints/endpoints.dart';
import '../entities/response/stories_and_video_response/stories_and_video_response.dart';

abstract class AboutUsRepository {
  Future<Either<BaseErrorResponse, StoriesAndVideoResponse>>
      getStoriesAndVideos();
}

class AboutUsRepositoryImpl implements AboutUsRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, StoriesAndVideoResponse>>
      getStoriesAndVideos() async {
    try {
      final response = await _dio.get(
        Endpoints.baseUrl + Endpoints.aboutUs,
      );
      if (response.data['success'] == true) {
        final data = StoriesAndVideoResponse.fromJson(response.data);
        return Right(data);
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
