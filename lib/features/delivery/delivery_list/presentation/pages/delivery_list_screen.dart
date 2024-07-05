import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/base_response/base_state/base_state.dart';
import 'package:rasan_delivery/core/widgets/custom_app_bar.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/deliveries_list_response.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_list_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/widgets/delivery_item_widget.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/widgets/shimmer_widget.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../drawer/presentation/pages/custom_drawer.dart';
import '../../../../profile/profile_home_screen/presentation/controllers/profile_controller.dart';

//this is delivery list screen
class DeliveryListScreen extends StatefulWidget {
  const DeliveryListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DeliveryListScreenState();
}

class _DeliveryListScreenState extends State<DeliveryListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final DeliveryListController _deliveryListController = Get.find();
  final ProfileController _profileController = Get.find();

  @override
  void initState() {
    _deliveryListController.getDeliveryList();
    _profileController.getUserProfile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    closeDrawer();
    return Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: HomeScreenAppBar(
          scaffoldKey: _scaffoldKey,
        ),
        body: Obx(() {
          return _deliveryListController.baseState.value is BaseLoading
              ? const DeliveryShimmerWidget()
              : _deliveryListController.baseState.value is BaseError
              ? const CustomErrorWidget()
              : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ((_deliveryListController.baseState.value as BaseSuccess)
                  .data as DeliveriesListResponse).data.length,
              itemBuilder: (context, index) {
                return DeliveriesItemWidget(
                  deliveriesData: ((_deliveryListController.baseState.value as BaseSuccess)
                      .data as DeliveriesListResponse).data[index],
                );
              });
        }));
  }

  void closeDrawer() {
    if (_scaffoldKey.currentState != null &&
        _scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    }
  }

}
