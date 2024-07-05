import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/utils/app_permission_handler.dart';
import '../../../../../core/utils/map_utils.dart';
import '../../domain/entities/delivery_details_response.dart';
import '../controller/delivery_location_controller.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  final OrdersListData ordersListData = Get.arguments;
  final DeliveryLocationController _deliveryLocationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                   const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 20,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Go back to home screen',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.primaryDEF)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              //var screenSize = MediaQuery.sizeOf(context);
              // width: MediaQuery.sizeOf(context).width,
              // height: MediaQuery.sizeOf(context).height * 0.5,
              child: Icon(
                Icons.delivery_dining,
                size: 80,
                color: AppColors.primaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: kVerticalPadding),
              child: Column(
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Delivery completed!! \n'
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
                    height: 6.h,
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Thank you for delivering items. You have completed the delivery!!",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      //send current location
                      sendLocation();
                      // Get.offAllNamed(AppRoutes.deliveryListScreen);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 30),
                      child: Text(
                        'Send current location'.tr,
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

  void sendLocation() async {
    late bool status;
    if (Platform.isIOS) {
      await Permission.location.status.isGranted;
      status = await AppPermissionHandler.hasLocationPermission(Get.context!);
    } else {
      status = await AppPermissionHandler.hasLocationPermission(Get.context!);
    }
    if (status) {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      String latitude = "${position.latitude}";
      String longitude = "${position.longitude}";
      _deliveryLocationController.postDeliveryLocation(
          latitude, longitude, ordersListData.shipping_address_details!.id);
    }
  }
}
