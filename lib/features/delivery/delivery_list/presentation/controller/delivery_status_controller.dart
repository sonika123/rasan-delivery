import 'package:get/get.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_list_repository.dart';

import '../../../../../core/base_response/base_state/base_state.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_snackbar.dart';

class DeliveryStatusController extends GetxController {
  final DeliveryListRepository _deliveryRepository = Get.find();
  var baseState = const BaseState.initial().obs;

  //start delivery
  Future<void> startDelivery(OrdersListData ordersListData) async {
    baseState.value = const BaseState.loading();
    final response = await _deliveryRepository.startDelivery(ordersListData);
    response.fold((failure) {
      CustomSnackBar.showSnackBar(message: failure.message);
      baseState.value = BaseState.error(failure);
    }, (success) {
      Get.offNamed(AppRoutes.deliveryStartedScreen, arguments: ordersListData);
    });
  }

  //complete delivery
  Future<void> completeDelivery(OrdersListData ordersListData) async {
    baseState.value = const BaseState.loading();
    final response = await _deliveryRepository.completeDelivery(ordersListData);
    response.fold((failure) {
      CustomSnackBar.showSnackBar(message: failure.message);
      baseState.value = BaseState.error(failure);
    }, (success) {
      Get.offNamed(AppRoutes.thankYouScreen, arguments: ordersListData);
    });
  }


}
