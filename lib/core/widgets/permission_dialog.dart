// import 'package:android_intent/android_intent.dart';
// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../theme/colors.dart';

class PermissionDialog extends StatelessWidget {
  final String permissionFor;
  final BuildContext context;
  final bool disabled;

  PermissionDialog({
    Key? key,
    required this.context,
    required this.permissionFor,
    this.disabled = false,
  }) : super(key: key) {
    openDialog();
  }

  Future openDialog() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return this;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final message = permissionFor == 'storage'
        ? 'Rasan needs permission to access your device storage. '
            'Please allow permission from app settings.'
        : permissionFor == 'location'
            ? 'Rasan needs permission to access your location. '
                'Please allow permission from app settings. '
            : permissionFor == 'Camera'
                ? 'Rasan needs permission to access your camera to click a '
                    'photo. Please allow permission from app settings.'
                : 'Rasan needs permission to access your photo library to '
                    'select a photo. Please allow permission from app '
                    'settings.';

    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      children: [
        Container(
          padding: EdgeInsets.only(top: 30.h),
          decoration: BoxDecoration(
            color: Get.theme.cardColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 11.h),
                child: Text(
                  'Permission Required',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.primaryDEF,
                        fontWeight: FontWeight.w500,
                        height: 1.6,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: context.theme.cardColor,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                          ),
                          onTap: () {
                            Get.back();
                            Get.back();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              vertical: 20.w,
                            ),
                            child: Text(
                              'Not Now',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                          ),
                          onTap: () async {
                            await openAppSettings();
                            if (context.mounted) Navigator.of(context).pop();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: Text(
                              'Open Settings',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
