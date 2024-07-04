
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/base_response/base_state/base_state.dart';
import 'package:rasan_delivery/core/widgets/custom_app_bar.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/controller/delivery_list_by_orderid_controller.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/widgets/shimmer_widget.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../domain/entities/delivery_details_response.dart';
import '../widgets/delivery_items_by_orderId_widget.dart';

class DeliveryListByOrderIdScreen extends StatefulWidget {
  const DeliveryListByOrderIdScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DeliveryListByOrderIdScreenState();
}

class _DeliveryListByOrderIdScreenState extends State<DeliveryListByOrderIdScreen> {
  final DeliveryListByOrderIdController _deliveryListController = Get.find();
  final int orderId = Get.arguments;

  @override
  void initState() {
    _deliveryListController.getDeliveryListByOrderId(orderId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: 'Orders List' ,
        ),
        body: Obx(() {
          return _deliveryListController.baseState.value is BaseLoading
              ? const DeliveryShimmerWidget()
              : _deliveryListController.baseState.value is BaseError
              ? const CustomErrorWidget()
              : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ((_deliveryListController.baseState.value as BaseSuccess)
                  .data as DeliveryDetailsResponse).data.orders?.length,
              itemBuilder: (context, index) {
                return DeliveryItemsByOrderIdWidget(
                  ordersListData: ((_deliveryListController.baseState.value as BaseSuccess)
                      .data as DeliveryDetailsResponse).data.orders?[index],
                );
              });
        }));
  }

}
