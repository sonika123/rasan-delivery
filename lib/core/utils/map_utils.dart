
import 'package:flutter/cupertino.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/domain/entities/delivery_details_response.dart';

void initMaps(double map_longitude, double map_latitude) async {
  final availableMaps = await MapLauncher.installedMaps;
  print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

  await availableMaps.first
      .showMarker(coords: Coords(map_latitude, map_longitude), title: '');
}
String getAddressName(BuildContext context, OrdersListData? ordersListData) {
  String province = '';
  String city = '';
  String area = '';
  if (ordersListData?.shipping_address_details != null) {
    if (ordersListData?.shipping_address_details?.province != null &&
        ordersListData?.shipping_address_details?.province?.name != null) {
      province =
      '${ordersListData?.shipping_address_details?.province?.name}';
    } else {
      province = 'N/A';
    }

    if (ordersListData?.shipping_address_details?.city != null &&
        ordersListData?.shipping_address_details?.city?.name != null) {
      city = '${ordersListData?.shipping_address_details?.city?.name}';
    } else {
      city = 'N/A';
    }

    if (ordersListData?.shipping_address_details?.area != null &&
        ordersListData?.shipping_address_details?.area?.name != null) {
      area = '${ordersListData?.shipping_address_details?.area?.name}';
    } else {
      area = 'N/A';
    }

    return '$area, $city, $province';
  } else {
    return 'Address not available!!';
  }
}
