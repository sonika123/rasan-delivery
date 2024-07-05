import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/asset_path.dart';


class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget(
      {Key? key, required this.imageUrl, required this.url, this.fallbackUrl})
      : super(key: key);
  final String imageUrl;
  final String url;
  final String? fallbackUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          try {
            await launchUrl(
              Uri.parse(url),
            );
          } catch (e) {
            await launchUrl(
              Uri.parse(fallbackUrl ?? ''),
            );
          }
        },
        child: Padding(
          padding: imageUrl == IconAssetPath.instagram
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(6.0),
          child: SvgPicture.asset(
            imageUrl,
            height: imageUrl == IconAssetPath.instagram ? 42.h : 32.h,
            width: imageUrl == IconAssetPath.instagram ? 42.h : 32.w,
          ),
        ));
  }
}
