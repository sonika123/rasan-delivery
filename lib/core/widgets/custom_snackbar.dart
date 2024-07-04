import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../enums/enum.dart';
import '../theme/colors.dart';

class CustomSnackBar {
  static void showSnackBar(
      {String? title, String? message, SnackBarType? snackBarType}) {
    Get.snackbar(title ?? 'error'.tr, message ?? 'something_went_wrong'.tr,
        margin: const EdgeInsets.all(10),
        backgroundColor:
        snackBarType == null || describeEnum(snackBarType) == 'error'
            ? AppColors.errorColor
            : describeEnum(snackBarType) == 'success'
            ? AppColors.success50
            : AppColors.info50,
        snackPosition: SnackPosition.TOP,
        borderWidth: 1,
        borderColor:
        snackBarType == null || describeEnum(snackBarType) == 'error'
            ? const Color(0xFFF40D0D)
            : describeEnum(snackBarType) == 'success'
            ? AppColors.success400
            : AppColors.info400,
        snackStyle: SnackStyle.FLOATING);
  }
}
