// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class CustomAlertDialog {
  static void showAlertDialog({
    required BuildContext context,
    required Widget widget,
    bool? isDismissible,
    EdgeInsets? margin,
    EdgeInsets? padding,
  }) {
    showDialog(
        context: context,
        barrierDismissible: isDismissible == null || isDismissible == true,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)), //th
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8)),
              margin: margin ?? EdgeInsets.symmetric(horizontal: 16.w),
              padding: padding ??
                  EdgeInsets.symmetric(horizontal: 35.w, vertical: 24.h),
              child: widget,
            ),
          );
        });
  }
}
