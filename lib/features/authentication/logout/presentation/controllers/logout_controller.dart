import 'package:get/get.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../../otp/data/datasources/otp_local_data_source.dart';
import '../../domain/repository/logout_repository.dart';
class LogOutController extends GetxController {
  static LogOutController get to => Get.find();

  RxBool isLoading = false.obs;

  final LogOutRepository _logOutRepository = Get.put(LogOutRepositoryImpl());
  final OtpLocalDataSource _otpLocalDataSource =
      Get.put(OtpLocalDataSourceImpl());

  void logOutUser() async {
    isLoading.value = true;
    final response = await _logOutRepository.logout();
    response.fold(
      (failure) {
        isLoading.value = false;
        CustomSnackBar.showSnackBar(message: "failure.message");
      },
      (success) {
        _otpLocalDataSource.removeTokenFromDevice();
        Get.offAllNamed(AppRoutes.mobileNumberScreen);
        isLoading.value = false;
      },
    );
  }
}
