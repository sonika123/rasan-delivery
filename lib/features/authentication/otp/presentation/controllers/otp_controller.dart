import 'dart:async';

import 'package:get/get.dart';
import 'package:rasan_delivery/features/authentication/otp/domain/repository/otp_repository.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../data/datasources/otp_local_data_source.dart';

class OtpController extends GetxController{
  RxBool isOtpValid = false.obs;
  RxBool isLoading = false.obs;
  RxInt timer = 60.obs;

 final OtpRepository _otpRepository = Get.find();
  final OtpLocalDataSource _otpLocalDataSource = Get.put(OtpLocalDataSourceImpl());
  Future<void> login(String phoneNumber, String otp) async {
    isLoading.value = true;
    final response = await _otpRepository.login('+977-$phoneNumber', otp);
    response.fold(
            (failure) => CustomSnackBar.showSnackBar(message: failure.message),
            (success) {
          Get.offAllNamed(AppRoutes.deliveryListScreen);
          _otpLocalDataSource.saveTokenToDevice(success.data.token);
        });
    isLoading.value = false;
  }

  startTimer() async {
    Timer.periodic(const Duration(seconds: 1), (_) {
      if (timer > 0) {
        timer.value--;
      }
    });
  }
}