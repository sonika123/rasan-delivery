import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/utils/asset_path.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../controllers/mobile_number_controller.dart';


class MobileNumberScreen extends StatelessWidget {
  MobileNumberScreen({Key? key}) : super(key: key);
  final MobileNumberController _mobileNumberController = Get.find();
  final TextEditingController _mobileNumberTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding, vertical: kVerticalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              Center(
                child: Image.asset(
                  ImageAssetPath.mobileLogoPath,
                  height: 156.h,
                  width: 156.w,
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                'enter_mobile'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: AppColors.borderColor)),
                height: 54.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Image.asset(
                      ImageAssetPath.nepalFlag1,
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.borderColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      height: 54.h,
                      width: 1,
                      color: AppColors.borderColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _mobileNumberTextController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp('^[0-9]{1,10}')),
                        ],
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.length >= 10) {
                            FocusScope.of(context).nextFocus();
                            _mobileNumberController.isMobileNumberValid.value =
                                true;
                            _mobileNumberController
                                .getOtp(_mobileNumberTextController.text);
                          }
                        },
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          hintStyle: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: AppColors.greyTextColor,
                                  fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                          hintText: '9XXXXXXXXX',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),

              Obx(() {
                return CustomButton(
                    title: 'continue'.tr,
                    onPressed: () {
                      _mobileNumberController
                          .getOtp(_mobileNumberTextController.text);
                    },
                    isLoading: _mobileNumberController.isLoading.value,
                    isDisabled:
                        !_mobileNumberController.isMobileNumberValid.value);
              }),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                text: TextSpan(
                    text: 'agree_message'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: 'privacy_policy'.tr,
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => Get.toNamed(AppRoutes.privacyPolicyScreen),
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueColor),
                      ),
                      TextSpan(
                        text: ' and '.tr,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'terms_of_usage'.tr,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              Get.toNamed(AppRoutes.termsAndConditionScreen),
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueColor),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
