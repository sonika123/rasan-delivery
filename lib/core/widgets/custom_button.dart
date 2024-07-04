import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.bgColor,
    this.isLoading,
    this.textStyle,
    this.prefixIconUrl,
    this.padding,
    this.isDisabled,
    this.desiredHeight,
  }) : super(key: key);
  final Color? bgColor;
  final String title;
  final Function onPressed;
  final bool? isDisabled;
  final bool? isLoading;
  final String? prefixIconUrl;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? desiredHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (isLoading != null && isLoading == true) ||
                (isDisabled != null && isDisabled == true)
            ? debugPrint('')
            : onPressed();
      },
      child: Container(
        height: desiredHeight ?? 54.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isDisabled == true
                ? AppColors.grey400
                : bgColor ?? AppColors.primaryColor),
        padding: padding ?? EdgeInsets.symmetric(vertical: 16.h),
        child: isLoading == null || isLoading == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixIconUrl != null)
                    SvgPicture.asset(
                      prefixIconUrl!,
                      height: 20.h,
                      width: 20.w,
                    ),
                  if (prefixIconUrl != null) SizedBox(width: 12.w),
                  FittedBox(
                    child: Text(
                      title,
                      style: textStyle ??
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: AppColors.whiteColor,
                              ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: AppColors.whiteColor,
                    )),
              ),
      ),
    );
  }
}
