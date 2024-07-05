import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/network_services/endpoints/endpoints.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
import '../../domain/entities/response/stories_and_video_response/stories_and_video_response.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget(
      {Key? key, required this.storiesResponse, this.isFullWidth})
      : super(key: key);
  final StoriesResponse storiesResponse;
  final bool? isFullWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFullWidth != null && isFullWidth == true
          ? Get.width
          : Get.width * 0.5,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Center(
            child: CircleAvatar(
              radius: 50,
              child: CachedNetworkImage(
                errorWidget: (context, _, __) {
                  return CircleAvatar(
                    backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
                    radius: 50,
                    backgroundImage:
                        const AssetImage(ImageAssetPath.greyPerson),
                  );
                },
                placeholder: (context, _) {
                  return CircleAvatar(
                    backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
                    radius: 40,
                    backgroundImage:
                        const AssetImage(ImageAssetPath.greyPerson),
                  );
                },
                imageUrl: Endpoints.imageBaseUrl +
                    (storiesResponse.image?.full_size ?? ''),
                imageBuilder: (context, img) {
                  return CircleAvatar(
                    backgroundColor: AppColors.greyTextColor.withOpacity(0.3),
                    radius: 50,
                    backgroundImage: img,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Center(
            child: Text(
              storiesResponse.full_name ?? '',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppColors.grey700),
            ),
          ),
          const SizedBox(height: 2),
          Center(
            child: Text(
              storiesResponse.shop_name ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.greyDEF, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            storiesResponse.content ?? '',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.grey600),
          ),
        ],
      ),
    );
  }
}
