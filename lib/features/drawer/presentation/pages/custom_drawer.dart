import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
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
  // final ProfileController _profileController = Get.find();

  UpperContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Obx(() {
      return /* _profileController.baseState.value is BaseLoading
          ? Container(
        height: 184.h,
        color: AppColors.primaryColor,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      )
          : _profileController.baseState.value is BaseError
          ? const CustomErrorWidget()
          :*/ Container(
        padding: EdgeInsets.only(
            left: 24.w, right: 24.w, top: 30.h, bottom: 24.h),
        color: AppColors.primaryColor,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // Get.toNamed(AppRoutes.profileScreen);
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
                      // imageUrl: Endpoints.imageBaseUrl +
                      //     (((_profileController.baseState.value
                      //     as BaseSuccess)
                      //         .data as UserProfileData)
                      //         .profile_picture
                      //         ?.full_size ??
                      //         ''),
                      imageBuilder: (context, img) {
                        return CircleAvatar(
                          backgroundColor: AppColors.greyTextColor
                              .withOpacity(0.3),
                          radius: 40,
                          backgroundImage: img,
                        );
                      }, imageUrl: '',
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
                              child: Text("User name",
                                // ((_profileController.baseState.value
                                // as BaseSuccess)
                                //     .data as UserProfileData)
                                //     .full_name ??
                                //     ((_profileController.baseState
                                //         .value as BaseSuccess)
                                //         .data as UserProfileData)
                                //         .phone,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                    color: AppColors.whiteColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconAssetPath.starIconPath,
                              height: 18,
                              width: 18,
                              colorFilter: const ColorFilter.mode(
                                AppColors.whiteColor,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '${'0'} ${'points'.tr}',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                  color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            SvgPicture.asset(
                              IconAssetPath.dollarIconPath,
                              height: 18,
                              width: 18,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '${'rs'.tr} ${'0'} ${'cashback'.tr}',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                  color: AppColors.whiteColor),
                            ),
                          ],
                        ),
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
                // Get.toNamed(AppRoutes.editProfileScreen);
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
                      // getUserAddress(),
                      "User address",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset(
                      IconAssetPath.editIconPath,
                      height: 18,
                      width: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    // });
  }

/* String getUserAddress() => ((_profileController.baseState.value
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

*/
}
class LowerContainer extends StatefulWidget {
  const LowerContainer({Key? key}) : super(key: key);

  @override
  State<LowerContainer> createState() => _LowerContainerState();
}

class _LowerContainerState extends State<LowerContainer> {
  String? appVersionNumber = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(left: 24.w, right: 24.w, top: 30.h, bottom: 38.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomDrawerRow(
            title: 'loyalty_points',
            iconPath: IconAssetPath.loyaltyPointsStar,
            onTap: () {
              // Get.toNamed(AppRoutetes.loyaltyPointsScreen);
            },
          ),
          Divider(
            color: AppColors.borderColor,
            thickness: 1.1,
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomDrawerRow(
            title: 'profile',
            iconPath: IconAssetPath.profileIconPath,
            onTap: () {
              // Get.toNamed(AppRoutes.profileScreen);
            },
          ),
          CustomDrawerRow(
            title: 'my_orders',
            iconPath: IconAssetPath.ordersIconPath,
            onTap: () {
              // Get.toNamed(
              // AppRoutes.myOrdersScreen,
              }
            ),

          CustomDrawerRow(
            title: 'language',
            iconPath: IconAssetPath.languageIconPath,
            onTap: () {
              // Get.toNamed(AppRoutes.languageSelectionScreen, arguments: true);
            },
          ),
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
