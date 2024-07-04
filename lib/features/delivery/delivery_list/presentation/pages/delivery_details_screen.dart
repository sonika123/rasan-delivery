import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/utils/asset_path.dart';
import 'package:rasan_delivery/core/widgets/custom_app_bar.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_location_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_status_controller.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/utils/map_utils.dart';
import '../../domain/entities/delivery_details_response.dart';

//this is delivery details screen

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  final DeliveryStatusController _deliveryStatusController = Get.find();
  final DeliveryLocationController _deliveryLocationController = Get.find();
  final OrdersListData ordersListData = Get.arguments;

  bool showLatLng = false;
  final TextEditingController _latitudeTextController = TextEditingController();
  final TextEditingController _longitutdeTextController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: 'Delivery Details',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding, vertical: kVerticalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(ImageAssetPath.rasanLogoPath),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        ordersListData.shop_name == null
                            ? 'N/A'
                            : '${ordersListData.shop_name}',
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
                        ordersListData.customer_name == null
                            ? 'N/A'
                            : '${ordersListData.customer_name}',
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
                      ordersListData.phone == null
                          ? 'N/A'
                          : '${ordersListData.phone}',
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
                SizedBox(
                  height: 15.h,
                ),

                //start delivery button
                InkWell(
                  onTap: () {
                    _deliveryStatusController.startDelivery(ordersListData);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 30),
                    child: Text(
                      'Start delivery'.tr,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),

                // get directions button
                ordersListData.shipping_address_details != null &&
                        ordersListData
                                .shipping_address_details?.map_longitude !=
                            null &&
                        ordersListData.shipping_address_details?.map_latitude !=
                            null
                    ? InkWell(
                        onTap: () {
                          initMaps(
                              double.parse(ordersListData
                                  .shipping_address_details!.map_longitude!),
                              double.parse(ordersListData
                                  .shipping_address_details!.map_latitude!));
                          // Get.toNamed(AppRoutes.editProfileScreen);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 26),
                          child: Text(
                            'Get Directions',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w900),
                          ),
                        ),
                      )
                    : Container()


                /*RichText(
                        text: TextSpan(children: [
                        TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.textColor,
                                ),
                            text:
                                "The map location is missing. Do you want to help by entering the coordinates? "),
                        TextSpan(
                            style:
                                const TextStyle(color: AppColors.primaryColor),
                            text: "Click here",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                // open lat long view
                                setState(() {
                                  showLatLng = !showLatLng;
                                });
                              }),
                      ]))*/,

                // location post layout
                SizedBox(
                  height: 10.h,
                ),

                Visibility(
                  visible: showLatLng,
                  child: Column(
                    children: [
                      TextField(
                        controller: _latitudeTextController,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.allow(
                        //       RegExp('^[0-9]{1,10}')),
                        // ],
                        keyboardType: TextInputType.number,
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
                          border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.textColor)),
                          hintText: 'Enter latitude',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        controller: _longitutdeTextController,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.allow(
                        //       RegExp('^[0-9]{1,10}')),
                        // ],
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        keyboardType: TextInputType.number,
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
                          border: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.textColor)),
                          hintText: 'Enter longitude',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () {
                          //post lat long here
                          String latitude = _latitudeTextController.text;
                          String longitude = _longitutdeTextController.text;

                          _deliveryLocationController.postDeliveryLocation(
                              latitude,
                              longitude,
                              ordersListData.shipping_address_details!.id);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 26),
                          child: Text(
                            'Send Location',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
