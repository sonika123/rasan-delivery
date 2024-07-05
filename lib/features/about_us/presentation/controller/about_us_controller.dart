import 'package:get/get.dart';
import '../../../../core/base_response/base_state/base_state.dart';
import '../../domain/repository/about_us_repository.dart';

/// @author: Sagar KC
/// @email: sagar.kc@fonepay.com
/// @created_at:  7/22/2022, Friday

class AboutUsController extends GetxController {
  final baseState = const BaseState.initial().obs;
  final AboutUsRepository _aboutUsRepository = Get.find();

  Future<void> fetchStoriesAndVideos() async {
    baseState.value = const BaseState.loading();
    final response = await _aboutUsRepository.getStoriesAndVideos();
    response.fold((failure) {
      baseState.value = BaseState.error(failure);
      // CustomSnackBar.showSnackBar(message: failure.message);
    }, (success) => baseState.value = BaseState.success(data: success));
  }
}
