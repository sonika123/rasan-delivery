
import 'package:get/get.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../domain/repositories/mobile_number_repository.dart';

class MobileNumberController extends GetxController {
  RxBool isMobileNumberValid = false.obs;
  RxBool isLoading = false.obs;
  final MobileNumberRepository _mobileNumberRepository = Get.find();

  Future<void> getOtp(String mobileNumber, {bool? hideNavigation}) async {
    isLoading.value = true;
    final response =
    await _mobileNumberRepository.requestOtp("+977-$mobileNumber");
    response.fold(
            (failure) => CustomSnackBar.showSnackBar(message: failure.message),
            (success) {
          if (hideNavigation == null) {
            Get.toNamed(AppRoutes.otpScreen, arguments: mobileNumber);
          }
        });
    isLoading.value = false;
  }
}
