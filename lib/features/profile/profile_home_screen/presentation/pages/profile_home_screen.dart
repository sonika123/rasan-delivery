import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/base_response/base_state/base_state.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/network_services/endpoints/endpoints.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/utils/asset_path.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../domain/entities/response/user_profile/user_profile_response.dart';
import '../controllers/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController _profileController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'profile',
      ),
      backgroundColor: AppColors.scaffoldColor,
      body: Obx(() {
        return SafeArea(
            child: _profileController.baseState.value is BaseLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : _profileController.baseState.value is BaseSuccess
                    ? ListView(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          UserInfoSection(
                              profileData: (_profileController.baseState.value
                                      as BaseSuccess)
                                  .data),


                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      )
                    : const Center(
                        child: Text("Error"),
                      ));
      }),
    );
  }
}

class UserInfoSection extends StatelessWidget {
  final UserProfileData profileData;

  const UserInfoSection({Key? key, required this.profileData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding, vertical: kVerticalPadding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: CachedNetworkImage(
                  placeholder: (context, _) {
                    return CircleAvatar(
                      backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
                      radius: 40,
                      backgroundImage:
                          const AssetImage(ImageAssetPath.greyPerson),
                    );
                  },
                  errorWidget: (context, _, __) {
                    return CircleAvatar(
                      backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
                      radius: 40,
                      backgroundImage:
                          const AssetImage(ImageAssetPath.greyPerson),
                    );
                  },
                  imageUrl: profileData.profile_picture?.full_size != null
                      ? Endpoints.imageBaseUrl +
                          (profileData.profile_picture?.full_size ?? '')
                      : '',
                  imageBuilder: (context, img) {
                    return CircleAvatar(
                      backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
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
                            profileData.full_name ?? 'n/a'.tr,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        profileData.is_verified
                            ? Icon(
                                Icons.check_circle,
                                size: 12.w,
                                color: AppColors.primaryColor,
                              )
                            : const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.home_outlined,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            profileData.shop?.name ?? 'n/a'.tr,
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
                          profileData.phone,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
             /* InkWell(
                onTap: () {
                  // Get.toNamed(AppRoutes.editProfileScreen);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: Text(
                    'edit'.tr,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )*/
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
                profileData.addresses == null || profileData.addresses!.isEmpty
                    ? 'n/a'.tr
                    : '${profileData.addresses![0].province.name}, ${profileData.addresses![0].city.name}, ${profileData.addresses![0].area.name}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

