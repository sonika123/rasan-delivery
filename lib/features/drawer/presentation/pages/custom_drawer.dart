import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/base_response/base_state/base_state.dart';
import '../../../../core/network_services/endpoints/endpoints.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../profile/profile_home_screen/domain/entities/response/user_profile/user_profile_response.dart';
import '../../../profile/profile_home_screen/presentation/controllers/profile_controller.dart';
import '../widgets/custom_drawer_row.dart';
import 'logout_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UpperContainer(),
          const LowerContainer(),
        ],
      ),
    );
  }
}

class UpperContainer extends StatelessWidget {
  final ProfileController _profileController = Get.find();

  UpperContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _profileController.baseState.value is BaseLoading
          ? Container(
        height: 184.h,
        color: AppColors.primaryColor,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      )
          : _profileController.baseState.value is BaseError
          ? const CustomErrorWidget()
          : Container(
        padding: EdgeInsets.only(
            left: 24.w, right: 24.w, top: 30.h, bottom: 24.h),
        color: AppColors.primaryColor,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.profileScreen);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: CachedNetworkImage(
                      errorWidget: (context, _, __) {
                        return CircleAvatar(
                          backgroundColor: AppColors.greyTextColor
                              .withOpacity(0.3),
                          radius: 40,
                          backgroundImage: const AssetImage(
                              ImageAssetPath.greyPerson),
                        );
                      },
                      placeholder: (context, _) {
                        return CircleAvatar(
                          backgroundColor: AppColors.greyTextColor
                              .withOpacity(0.3),
                          radius: 40,
                          backgroundImage: const AssetImage(
                              ImageAssetPath.greyPerson),
                        );
                      },
                      imageUrl: Endpoints.imageBaseUrl +
                          (((_profileController.baseState.value
                          as BaseSuccess)
                              .data as UserProfileData)
                              .profile_picture
                              ?.full_size ??
                              ''),
                      imageBuilder: (context, img) {
                        return CircleAvatar(
                          backgroundColor: AppColors.greyTextColor
                              .withOpacity(0.3),
                          radius: 40,
                          backgroundImage: img,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                ((_profileController.baseState.value
                                as BaseSuccess)
                                    .data as UserProfileData)
                                    .full_name ??
                                    ((_profileController.baseState
                                        .value as BaseSuccess)
                                        .data as UserProfileData)
                                        .phone,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                    color: AppColors.whiteColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),


                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            InkWell(
              onTap: () {
                // Get.toNamed(AppRoutes.AppRouteseditProfileScreen);
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.whiteColor,
                    size: 16,
                  ),
                  Expanded(
                    child: Text(
                      getUserAddress(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  /*Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      IconAssetPath.editIconPath,
                      height: 18,
                      width: 18,
                    ),
                  ),*/
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  String getUserAddress() => ((_profileController.baseState.value
  as BaseSuccess)
      .data as UserProfileData)
      .addresses ==
      null ||
      ((_profileController.baseState.value as BaseSuccess).data
      as UserProfileData)
          .addresses!
          .isEmpty
      ? 'n/a'.tr
      : '${((_profileController.baseState.value as BaseSuccess).data as UserProfileData).addresses?.first.province.name}, ${((_profileController.baseState.value as BaseSuccess).data as UserProfileData).addresses?.first.city.name}, ${((_profileController.baseState.value as BaseSuccess).data as UserProfileData).addresses?.first.area.name}';
}

class LowerContainer extends StatefulWidget {
  const LowerContainer({Key? key}) : super(key: key);

  @override
  State<LowerContainer> createState() => _LowerContainerState();
}

class _LowerContainerState extends State<LowerContainer> {
  String? appVersionNumber = '';

  @override
  void initState() {
    // getAppVersionNumber();
    super.initState();
  }

/*  getAppVersionNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    setState(() {
      appVersionNumber = version;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(left: 24.w, right: 24.w, top: 30.h, bottom: 38.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // CustomDrawerRow(
          //     title: 'Offers',
          //     iconPath: IconAssetPath.offer,
          //     onTap: (){}),
          /*CustomDrawerRow(
            title: 'lucky_draw_coupons',
            iconPath: IconAssetPath.luckyDrawIconPath,
            onTap: () {},
          ),
          const SizedBox(
            height: 6,
          ),*/
          // CustomDrawerRow(
          //   title: 'loyalty_points',
          //   iconPath: IconAssetPath.loyaltyPointsStar,
          //   onTap: () {
          //     Get.toNamed(AppRoutes.loyaltyPointsScreen);
          //   },
          // ),
         /* Divider(
            color: AppColors.borderColor,
            thickness: 1.1,
          ),*/
          /*SizedBox(
            height: 24.h,
          ),*/
          CustomDrawerRow(
            title: 'profile',
            iconPath: IconAssetPath.profileIconPath,
            onTap: () {
              Get.toNamed(AppRoutes.profileScreen);
            },
          ),

          CustomDrawerRow(
            title: 'about_rasan',
            iconPath: IconAssetPath.infoIconPath,
            onTap: () {
              Get.toNamed(AppRoutes.aboutUsScreen);
            },
          ),
          CustomDrawerRow(
            title: 'privacy_and_policy',
            iconPath: IconAssetPath.policyIconPath,
            onTap: () {
              Get.toNamed(AppRoutes.privacyPolicyScreen);
            },
          ),
          CustomDrawerRow(
            title: 'terms_of_service',
            iconPath: IconAssetPath.termsIconPath,
            onTap: () {
              Get.toNamed(AppRoutes.termsAndConditionScreen);
            },
          ),
          /* CustomDrawerRow(
            title: 'loyalty_offers',
            iconPath: IconAssetPath.editIconPath,
            onTap: () {},
          ),*/
          const SizedBox(
            height: 6,
          ),
          Divider(
            color: AppColors.borderColor,
            thickness: 1.1,
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomDrawerRow(
            title: 'logout',
            iconPath: IconAssetPath.logoutIconPath,
            onTap: () {
              LogoutDialog().showLogoutDialog(context);
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text('${'version'.tr} $appVersionNumber',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.blueColor)),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
