import 'package:get/get.dart';
import 'package:rasan_delivery/core/enums/enum.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_list_repository.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_location_repository.dart';

import '../../../../../core/base_response/base_state/base_state.dart';
import '../../../../../core/widgets/custom_snackbar.dart';

class DeliveryLocationController extends GetxController {
  final DeliveryLocationRepository _deliveryLocationRepository = Get.find();
  var baseState = const BaseState.initial().obs;

  //post location lat lng
  Future<void> postDeliveryLocation(
      String latitude, String longitude, int shippingId) async {
    baseState.value = const BaseState.loading();
    final response = await _deliveryLocationRepository.postDeliveryLocation(
        latitude, longitude, shippingId);

    response.fold((failure) {
      CustomSnackBar.showSnackBar(message: failure.message);
      baseState.value = BaseState.error(failure);
    }, (success) {
      CustomSnackBar.showSnackBar(snackBarType : SnackBarType.success, message: success.message, title: 'Success');

    });
  }
}
