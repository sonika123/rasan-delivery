import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../mobile_number/presentation/controllers/mobile_number_controller.dart';
import '../controllers/otp_controller.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final String mobileNumber = Get.arguments;
  final OtpController _otpController = Get.find();
  final MobileNumberController _mobileNumberController = Get.find();
  final TextEditingController _otpTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _otpController.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarAuthentication(
          actionWidgets: [],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.h,
                ),
                Text(
                  '${'enter_otp'.tr} +977-$mobileNumber',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 12.h,
                ),
                PinCodeTextField(
                  controller: _otpTextController,
                  cursorWidth: 0,
                  appContext: context,
                  length: 6,
                  animationDuration: const Duration(seconds: 0),
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    selectedFillColor: Colors.transparent,
                    fieldHeight: 45.h,
                    fieldWidth: 45.w,
                    shape: PinCodeFieldShape.box,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.borderColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('^[0-9]{1,6}')),
                  ],
                  onChanged: (value) {
                    if (value.length != 6) {
                      _otpController.isOtpValid.value = false;
                    }
                  },
                  onCompleted: (value) {
                    _otpController.isOtpValid.value = true;
                  },
                  pastedTextStyle: const TextStyle(color: AppColors.textColor),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Obx(() {
                  return CustomButton(
                      title: 'continue'.tr,
                      onPressed: () {
                        _otpController.login(
                            mobileNumber, _otpTextController.text);
                      },
                      isLoading: _otpController.isLoading.value,
                      isDisabled: !_otpController.isOtpValid.value);
                }),
                SizedBox(
                  height: 25.h,
                ),
                Obx(() {
                  return InkWell(
                    onTap: () {
                      if (_otpController.timer.value == 0) {
                        _mobileNumberController.getOtp(mobileNumber,
                            hideNavigation: true);
                        _otpController.timer.value = 60;
                      }
                    },
                    child: Center(
                      child: RichText(
                          text: TextSpan(
                              text: 'didnot_receive_otp'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                              text: 'resend'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blueColor),
                            ),
                            TextSpan(
                              text:
                                  '(00:${_otpController.timer.value.toString().padLeft(2, '0')})',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ])),
                    ),
                  );
                })
              ],
            ),
          ),
        ));
  }
}
