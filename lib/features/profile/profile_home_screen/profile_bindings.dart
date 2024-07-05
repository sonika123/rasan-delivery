import 'package:get/get.dart';
import 'package:rasan_delivery/features/profile/profile_home_screen/presentation/controllers/profile_controller.dart';

import 'domain/repository/profile_repository.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl());
  }
}
