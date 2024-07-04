import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/custom_shimmer.dart';


class DeliveryShimmerWidget extends StatelessWidget {
  const DeliveryShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: CustomShimmer(height: 100.h, width: Get.width),
          );
        });
  }
}
