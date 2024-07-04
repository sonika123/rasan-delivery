import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/base_response/base_error_response.dart';
import 'package:rasan_delivery/core/base_response/base_success_response.dart';
import 'package:rasan_delivery/core/network_services/endpoints/endpoints.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';

abstract class DeliveryListRepository {
  //fetch deliveries of assigned users....
  Future<Either<BaseErrorResponse, DeliveriesListResponse>>
      fetchDeliveriesList();

  Future<Either<BaseErrorResponse, DeliveryDetailsResponse>>
      fetchDeliveryListbyOrderId(int orderId);

  Future<Either<BaseErrorResponse, BaseSuccessResponse>> startDelivery(
      OrdersListData ordersListData);

  Future<Either<BaseErrorResponse, BaseSuccessResponse>> completeDelivery(
      OrdersListData ordersListData);
}

class DeliveryListRepositoryImpl implements DeliveryListRepository {
  final Dio _dio = Get.find();

  @override
  Future<Either<BaseErrorResponse, DeliveriesListResponse>>
      fetchDeliveriesList() async {
    try {
      final response =
          await _dio.get(Endpoints.baseUrl + Endpoints.assignedDeliveryList);

      if (response.data['success'] == true) {
        return Right(DeliveriesListResponse.fromJson(response.data));
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

  @override
  Future<Either<BaseErrorResponse, DeliveryDetailsResponse>>
      fetchDeliveryListbyOrderId(int orderId) async {
    try {
      final response = await _dio
          .get('${Endpoints.baseUrl}${Endpoints.deliveryListById}$orderId');
      if (response.data['success'] == true) {
        return Right(DeliveryDetailsResponse.fromJson(response.data));
      } else {
        return Left(BaseErrorResponse.fromJson(response.data));
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return Left(
            BaseErrorResponse(success: false, message: 'no_internet'.tr));
      }
      return Left(BaseErrorResponse(success: false, message: e.message));
    } catch (e) {
      return Left(
          BaseErrorResponse(success: false, message: 'somthing_went_wrong'.tr));
    }
  }

  /*pass the order id &
  (POST for delivery_status='in_process',
   PUT for delivery_status='delivered' and
    PATCH for delivery_status='delivery_cancel')*/
  @override
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> startDelivery(
      OrdersListData ordersListData) async {
    try {
      var response = await _dio.post(
            '${Endpoints.baseUrl}${Endpoints.deliveryAction}${ordersListData.id}/',
            data: {'delivery_status': 'in_process'});
      if (response.data['success'] == true) {
        return Right(BaseSuccessResponse.fromJson(response.data));
      } else {
        return Left(BaseErrorResponse.fromJson(response.data));
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return Left(
            BaseErrorResponse(success: false, message: 'no_internet'.tr));
      }
      return Left(BaseErrorResponse(success: false, message: e.message));
    } catch (e) {
      return Left(
          BaseErrorResponse(success: false, message: 'somthing_went_wrong'.tr));
    }
  }

  @override
  Future<Either<BaseErrorResponse, BaseSuccessResponse>> completeDelivery(
      OrdersListData ordersListData) async {
    try {
      var response = await _dio.put(
          '${Endpoints.baseUrl}${Endpoints.deliveryAction}${ordersListData.id}/',
          data: {'delivery_status': 'delivered'});
      if (response.data['success'] == true) {
        return Right(BaseSuccessResponse.fromJson(response.data));
      } else {
        return Left(BaseErrorResponse.fromJson(response.data));
      }
    } on DioError catch (e) {
      if (e.error is SocketException) {
        return Left(
            BaseErrorResponse(success: false, message: 'no_internet'.tr));
      }
      return Left(BaseErrorResponse(success: false, message: e.message));
    } catch (e) {
      return Left(
          BaseErrorResponse(success: false, message: 'somthing_went_wrong'.tr));
    }
  }
}
