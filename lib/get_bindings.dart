import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'core/network_services/interceptors/build_dio.dart';

class GetBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(buildDio());
    // homeScreenBindings();
  }
 /* void homeScreenBindings() {
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => BrandController());
    Get.lazyPut(() => RasanChoiceController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => FCMController());
    Get.lazyPut<HomeScreenRepository>(() => HomeScreenRepositoryImpl());
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl());
    Get.lazyPut<UserFirebaseRepository>(() => UserFirebaseRepositoryImpl());
  }*/
}
