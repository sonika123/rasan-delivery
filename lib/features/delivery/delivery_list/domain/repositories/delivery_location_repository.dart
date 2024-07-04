import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/base_response/base_error_response.dart';
import 'package:rasan_delivery/core/network_services/endpoints/endpoints.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_location_response.dart';

abstract class DeliveryLocationRepository {
  //fetch deliveries of assigned users....
  Future<Either<BaseErrorResponse, DeliveriesLocationResponse>>
      postDeliveryLocation(String latitude, String longitude, int shipping_id);
}

class DeliveryLocationRepositoryImpl implements DeliveryLocationRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, DeliveriesLocationResponse>>
      postDeliveryLocation(
          String latitude, String longitude, int shipping_id) async {
    try {
      final response = await _dio.put(
          '${Endpoints.baseUrl}${Endpoints.postLatLng}$shipping_id/',
          data: {'map_latitude': latitude, 'map_longitude': longitude});

      if (response.data['success'] == true) {
        return Right(DeliveriesLocationResponse.fromJson(response.data));
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
