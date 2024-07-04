import 'package:get/get.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_list_repository.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/repositories/delivery_location_repository.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_list_by_orderid_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_list_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_location_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_status_controller.dart';

class DeliveryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryListRepository>(() => DeliveryListRepositoryImpl());
    Get.lazyPut(() => DeliveryListController());
    Get.lazyPut(() => DeliveryListByOrderIdController());
    Get.lazyPut(() => DeliveryStatusController());


    Get.lazyPut<DeliveryLocationRepository>(() => DeliveryLocationRepositoryImpl());
    Get.lazyPut(() => DeliveryLocationController());

  }
}
