import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/theme/colors.dart';

class DeliveriesItemWidget extends StatelessWidget {

  const DeliveriesItemWidget({super.key,required this.deliveriesData,});

  final DeliveriesData deliveriesData;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.deliveryListByOrderidScreen, arguments: deliveriesData.id);
      },
      child: Container(
        margin: EdgeInsets.all(10.h),
        padding: EdgeInsets.all(5.h),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID : ${deliveriesData.id}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                  Text(
                    "Vehicle ID : ${deliveriesData.vehicle}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  Text(
                    'User ID : ${deliveriesData.user}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                  ),

                  Text(
                    'Orders : ${deliveriesData.orders}',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                  ),

                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.arrow_forward_ios, size: 30, color: AppColors.primaryColor,),
            )
          ],
        ),
      ),
    );
  }
}
