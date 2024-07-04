import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/utils/map_utils.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/theme/colors.dart';

class DeliveryItemsByOrderIdWidget extends StatelessWidget {
  const DeliveryItemsByOrderIdWidget({
    super.key,
    required this.ordersListData,
  });

  final OrdersListData? ordersListData;

  final deliverStatusInProcess = "in_process";
  final deliverStatusDelivered = "delivered";
  final deliverStatusCancelled = "delivery_cancel";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ordersListData?.delivery_status == deliverStatusInProcess) {
          Get.toNamed(AppRoutes.deliveryStartedScreen,
              arguments: ordersListData);
        } else if (ordersListData?.delivery_status == deliverStatusDelivered) {
          Get.offNamed(AppRoutes.thankYouScreen, arguments: ordersListData);
        } else {
          Get.toNamed(AppRoutes.deliveryDetailsScreen,
              arguments: ordersListData);
        }
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6),
            ),
            margin: EdgeInsets.all(10.h),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: kVerticalPadding),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              ordersListData?.shop_name == null
                                  ? 'N/A'
                                  : '${ordersListData?.shop_name}',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: getColorsAccordingToDeliveryStatus(
                                      ordersListData?.delivery_status),
                                ),
                              ),
                              child: Text(
                                '${ordersListData?.delivery_status?.toUpperCase()}',
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person_2_outlined,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ordersListData?.customer_name == null
                                  ? 'N/A'
                                  : '${ordersListData?.customer_name}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            ordersListData?.phone == null
                                ? 'N/A'
                                : '${ordersListData?.phone}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: AppColors.warningColor,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        getAddressName(context, ordersListData),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Color> getColorsAccordingToDeliveryStatus(String? deliveryStatus) {
    if (deliveryStatus == "delivery_cancel") {
      return [Colors.red, Color.fromARGB(166, 246, 29, 19)];
    } else if (deliveryStatus == "delivered") {
      return [Colors.green, Color.fromARGB(206, 110, 220, 79)];
    } else {
      //limited stock
      return [Colors.amber, Color.fromARGB(255, 241, 194, 90)];
    }
  }
}
