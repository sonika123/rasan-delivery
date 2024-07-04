import 'package:get/get.dart';
import 'package:rasan_delivery/features/authentication/otp/presentation/controllers/otp_controller.dart';

import 'domain/repository/otp_repository.dart';

class OtpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => OtpController(),
      fenix: true,
    );
    Get.lazyPut<OtpRepository>(
          () => OtpRepositoryImpl(),
      fenix: true,
    );
  }
}