import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:rasan_delivery/core/utils/asset_path.dart';
import 'package:rasan_delivery/core/utils/map_utils.dart';
import 'package:rasan_delivery/core/widgets/custom_app_bar.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_status_controller.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/theme/colors.dart';

//this is delivery started screen
class DeliveryStartedScreen extends StatefulWidget {
  const DeliveryStartedScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DeliveryStartedScreenState();
}

class _DeliveryStartedScreenState extends State<DeliveryStartedScreen> {
  final DeliveryStatusController _deliveryStatusController = Get.find();
  final OrdersListData ordersListData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Delivery Started',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //var screenSize = MediaQuery.sizeOf(context);
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: SvgPicture.asset(
                fit: BoxFit.cover,
                IconAssetPath.deliveryStatus,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: kVerticalPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${ordersListData.shop_name}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
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
                          '${ordersListData.customer_name}',
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
                        "${ordersListData.phone}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
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
                  ordersListData.shipping_address_details != null &&
                          ordersListData
                                  .shipping_address_details?.map_longitude !=
                              null &&
                          ordersListData
                                  .shipping_address_details?.map_latitude !=
                              null
                      ?
                  InkWell(
                          onTap: () {
                            initMaps(
                                double.parse(ordersListData
                                    .shipping_address_details!.map_longitude!),
                                double.parse(ordersListData
                                    .shipping_address_details!.map_latitude!));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.directions,
                                  size: 20.h,
                                ),
                                SizedBox(
                                  width: 4.r,
                                ),
                                Text(
                                  'Get Directions',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ) : const SizedBox(),
                 SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Your delivery is in process. Please press the button below after you reach the destination.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      _deliveryStatusController
                          .completeDelivery(ordersListData);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 30),
                      child: Text(
                        'Reached delivery'.tr,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
