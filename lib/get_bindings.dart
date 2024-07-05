import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/features/profile/profile_home_screen/profile_bindings.dart';

import 'core/network_services/interceptors/build_dio.dart';
import 'features/profile/profile_home_screen/domain/repository/profile_repository.dart';
import 'features/profile/profile_home_screen/presentation/controllers/profile_controller.dart';

class GetBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(buildDio());
    homeScreenBindings();

  }

  void homeScreenBindings() {
    // Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => ProfileController());
    // Get.lazyPut(() => BrandController());
    // Get.lazyPut(() => RasanChoiceController());
    // Get.lazyPut(() => FCMController());
    // Get.lazyPut<HomeScreenRepository>(() => HomeScreenRepositoryImpl());
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl());
    // Get.lazyPut<UserFirebaseRepository>(() => UserFirebaseRepositoryImpl());
  }
}
