import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../theme/colors.dart';
import '../utils/asset_path.dart';
import 'custom_button.dart';

class SessionExpiredWidget extends StatelessWidget {
  const SessionExpiredWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            IconAssetPath.offerNotification,
            height: 64.h,
            width: 64.w,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'session_expired'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColors.grey800),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'session_expire_message'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.grey600),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomButton(
              title: 'login'.tr,
              onPressed: () async {
                await Get.offAllNamed(AppRoutes.mobileNumberScreen);
              })
        ],
      ),
    );
  }
}
