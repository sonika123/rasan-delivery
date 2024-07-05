import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../widgets/permission_dialog.dart';

class AppPermissionHandler {
  static Future<bool> hasLocationPermission(BuildContext context) async {
    var status = await Permission.location.status;

    if (status.isDenied) {
      await Permission.location.request();
      status = await Permission.location.status;
    }

    if (status.isDenied) {
      if (Platform.isAndroid) {
        final show = await Permission.location.shouldShowRequestRationale;

        if (!show && context.mounted) {
          PermissionDialog(permissionFor: 'location', context: context);
        } else {
          await Permission.location.request();
          status = await Permission.location.status;
        }
      } else if (Platform.isIOS && context.mounted) {
        PermissionDialog(permissionFor: 'location', context: context);
      }
    }

    if ((status.isPermanentlyDenied || status.isRestricted) &&
        context.mounted) {
      PermissionDialog(
        permissionFor: 'location',
        context: context,
        disabled: status.isPermanentlyDenied
            ? Platform.isAndroid
                ? true
                : false
            : false,
      );
    }

    return status == PermissionStatus.granted;
  }
}
