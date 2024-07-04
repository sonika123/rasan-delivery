import 'package:get/get.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_list_repository.dart';

import '../../../../../core/base_response/base_state/base_state.dart';
import '../../../../../core/widgets/custom_snackbar.dart';

class DeliveryListController extends GetxController {
  final DeliveryListRepository _deliveryRepository = Get.find();
  var baseState = const BaseState.initial().obs;

  //list deliveries
  Future<void> getDeliveryList() async {
    baseState.value = const BaseState.loading();
    final response = await _deliveryRepository.fetchDeliveriesList();
    response.fold((failure) {
      CustomSnackBar.showSnackBar(message: failure.message);
      baseState.value = BaseState.error(failure);
    }, (success) {
      baseState.value = BaseState<DeliveriesListResponse>.success(data: success);
    });
  }

}
