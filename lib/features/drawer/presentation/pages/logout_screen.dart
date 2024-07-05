// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../authentication/logout/presentation/controllers/logout_controller.dart';
class LogoutDialog {
  final logoutController = Get.put(LogOutController());

  void showLogoutDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)), //th
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    IconAssetPath.logout1IconPath,
                    height: 45.h,
                    width: 45.w,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'confirm_logout'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'logout_message'.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyTextColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          padding: EdgeInsets.all(12.h),
                          textStyle: Theme.of(context).textTheme.bodySmall,
                          bgColor: AppColors.lightGreyColor,
                          title: 'cancel'.tr,
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Obx(
                          () => CustomButton(
                            padding: EdgeInsets.all(12.h),
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: AppColors.whiteColor),
                            bgColor: AppColors.primaryColor,
                            title: 'logout'.tr,
                            onPressed: () {
                              logoutController.logOutUser();
                            },
                            isLoading: logoutController.isLoading.value,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
