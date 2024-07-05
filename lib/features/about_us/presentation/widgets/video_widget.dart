import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rasan_delivery/features/about_us/presentation/widgets/video_widget_1.dart';

import '../../../../core/network_services/endpoints/endpoints.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../../core/widgets/custom_shimmer.dart';
import '../../domain/entities/response/stories_and_video_response/stories_and_video_response.dart';


class AboutUsVideoWidget extends StatelessWidget {
  const AboutUsVideoWidget({Key? key, required this.videoResponse})
      : super(key: key);
  final VideoResponse videoResponse;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                insetPadding: EdgeInsets.zero,
                child: VideoWidget(
                  videoUrl: videoResponse.video_url,
                ),
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                height: 243.h,
                width: 140.w,
                imageUrl: Endpoints.imageBaseUrl +
                    (videoResponse.image?.full_size ?? ''),
                fit: BoxFit.cover,
                errorWidget: (context, _, __) {
                  return Image.asset(
                    ImageAssetPath.noImage,
                    height: 243.h,
                    // width: 140.w,
                    fit: BoxFit.contain,
                  );
                },
                placeholder: (context, _) {
                  return CustomShimmer(height: 243.h, width: 140.w);
                },
              ),
            ),
            const Icon(
              Icons.play_circle_outline,
              size: 50,
              color: AppColors.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
