import 'package:get/get.dart';
import 'package:rasan_delivery/features/authentication/mobile_number/presentation/controllers/mobile_number_controller.dart';
import 'domain/repositories/mobile_number_repository.dart';

class MobileNumberBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MobileNumberController(),
      fenix: true,
    );
    Get.lazyPut<MobileNumberRepository>(
      () => MobileNumberRepositoryImpl(),
      fenix: true,
    );
  }
}
