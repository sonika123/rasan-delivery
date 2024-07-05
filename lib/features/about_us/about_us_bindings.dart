import 'package:get/get.dart';
import 'package:rasan_delivery/features/about_us/presentation/controller/about_us_controller.dart';

import 'domain/repository/about_us_repository.dart';

class AboutUsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutUsRepository>(() => AboutUsRepositoryImpl());
    Get.lazyPut(() => AboutUsController());
  }
}
