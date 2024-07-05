import 'package:get/get.dart';
import 'package:rasan_delivery/features/authentication/logout/presentation/controllers/logout_controller.dart';

import 'domain/repository/logout_repository.dart';

class LogOutBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LogOutController(),
      fenix: true,
    );
    Get.lazyPut<LogOutRepository>(() => LogOutRepositoryImpl());
  }
}
