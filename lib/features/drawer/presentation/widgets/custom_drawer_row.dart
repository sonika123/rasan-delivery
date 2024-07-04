import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../core/theme/colors.dart';

class CustomDrawerRow extends StatelessWidget {
  const CustomDrawerRow(
      {Key? key,
      required this.title,
      this.count,
      required this.iconPath,
      required this.onTap})
      : super(key: key);
  final String iconPath;
  final String title;
  final String? count;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.all(14.h),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 20,
              width: 22,
              colorFilter: const ColorFilter.mode(
                AppColors.blackColor,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
                child: Text(title.tr,
                    style: Theme.of(context).textTheme.titleLarge)),
          ],
        ),
      ),
    );
  }
}
