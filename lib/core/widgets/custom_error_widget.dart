import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../theme/colors.dart';
import '../utils/asset_path.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, this.errorMessage, this.onRetry})
      : super(key: key);
  final String? errorMessage;
  final Function? onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          const SizedBox(height: 100),
          if (errorMessage != null && errorMessage!.tr == 'no_internet'.tr)
            Image.asset(ImageAssetPath.noWifi),
          const SizedBox(height: 12),
          Text(
            errorMessage ?? 'something_went_wrong'.tr,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          if (onRetry != null)
            InkWell(
              onTap: () {
                onRetry!();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                child: Text(
                  'retry'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.blueColor),
                ),
              ),
            ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
