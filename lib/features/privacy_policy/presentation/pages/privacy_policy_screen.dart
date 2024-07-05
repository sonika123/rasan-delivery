import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scaffold_widget.dart';
import '../../domain/privacy_policy_static_data.dart';
import '../controller/privacy_policy_controller.dart';
class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({Key? key}) : super(key: key);
  final PrivacyPolicyController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CustomScaffold(
        appBar: CustomAppbar(
          title: _controller.privacyPolicyParentText.value,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 20.h),
              Text(
                'privacy_policy'.tr,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.grey800),
              ),
              SizedBox(height: 12.h),
              Text(
                'read_carefully'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.grey700),
              ),
              SizedBox(height: 50.h),
              const MarkdownBody(
                data: PrivacyPolicyStaticData.privacyPolicy,
              ),
            ],
          ),
        ),
      );
    });
  }
}
