import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/base_response/base_state/base_state.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../../core/widgets/custom_scaffold_widget.dart';
import '../../../../core/widgets/custom_shimmer.dart';
import '../../domain/about_us_static_data.dart';
import '../../domain/entities/response/stories_and_video_response/stories_and_video_response.dart';
import '../controller/about_us_controller.dart';
import '../widgets/social_media_widget.dart';
import '../widgets/stories_widget.dart';
import '../widgets/video_widget.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  bool _showReadMore = true;
  final AboutUsController _aboutUsController = Get.find();

  @override
  void initState() {
    _aboutUsController.fetchStoriesAndVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        title: SvgPicture.asset(
          IconAssetPath.rasanIconPath,
          height: 24,
          width: 96,
        ),
      ),
      body: Obx(() {
        return _aboutUsController.baseState.value is BaseLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _imageSection(),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                    child: Text(
                      AboutUsStaticData.aboutUs,
                      textAlign: TextAlign.justify,
                      maxLines: !_showReadMore ? null : 8,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.grey700),
                    ),
                  ),
                  AboutUsStaticData.aboutUs.length > 700 &&
                          _showReadMore == true
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              _showReadMore = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: kHorizontalPadding,
                                top: 8,
                                bottom: 8,
                                right: 40.w),
                            child: Text(
                              'read_more'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: AppColors.primaryDEF),
                            ),
                          ))
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  _VideoSection(),
                  _StoriesSection(),
                  const _FooterSection(),
                ],
              );
      }),
    );
  }

  Stack _imageSection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          ImageAssetPath.aboutUs,
          height: 224.h,
          width: Get.width,
          fit: BoxFit.fill,
        ),
        Container(
            height: 224.h,
            width: Get.width,
            decoration:
                BoxDecoration(color: const Color(0xFF0F1825).withOpacity(0.6))),
        Padding(
          padding: EdgeInsets.only(left: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('about_us'.tr,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700)),
              const SizedBox(height: 12),
              const Row(),
              Text('about_us_message'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.whiteColor))
            ],
          ),
        )
      ],
    );
  }
}

class _VideoSection extends StatelessWidget {
  _VideoSection({Key? key}) : super(key: key);
  final AboutUsController _aboutUsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _aboutUsController.baseState.value is BaseLoading
          ? const CustomShimmer(height: 100, width: 200)
          : _aboutUsController.baseState.value is BaseError
              ? const SizedBox()
              : ((_aboutUsController.baseState.value as BaseSuccess).data
                          as StoriesAndVideoResponse)
                      .data
                      .videos
                      .isEmpty
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'stories_of_our_retailers'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: AppColors.grey800,
                                    fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 243.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: ((_aboutUsController.baseState.value
                                          as BaseSuccess)
                                      .data as StoriesAndVideoResponse)
                                  .data
                                  .videos
                                  .length,
                              itemBuilder: (context, index) {
                                return AboutUsVideoWidget(
                                    videoResponse: ((_aboutUsController
                                                .baseState.value as BaseSuccess)
                                            .data as StoriesAndVideoResponse)
                                        .data
                                        .videos[index]);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 46.h),
                      ],
                    );
    });
  }
}

class _StoriesSection extends StatelessWidget {
  _StoriesSection({Key? key}) : super(key: key);
  final AboutUsController _aboutUsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _aboutUsController.baseState.value is BaseLoading
          ? const CustomShimmer(height: 100, width: 200)
          : _aboutUsController.baseState.value is BaseError
              ? const SizedBox()
              : ((_aboutUsController.baseState.value as BaseSuccess).data
                          as StoriesAndVideoResponse)
                      .data
                      .stories
                      .isEmpty
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'our_happy_retailers'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey800),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        ((_aboutUsController.baseState.value as BaseSuccess)
                                    .data as StoriesAndVideoResponse)
                                .data
                                .stories
                                .isNotEmpty
                            ? StoriesWidget(
                                isFullWidth: true,
                                storiesResponse: ((_aboutUsController
                                            .baseState.value as BaseSuccess)
                                        .data as StoriesAndVideoResponse)
                                    .data
                                    .stories[0])
                            : const SizedBox(),
                        Container(
                          color: AppColors.whiteColor,
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: Wrap(
                              children: ((_aboutUsController.baseState.value as BaseSuccess).data
                                      as StoriesAndVideoResponse)
                                  .data
                                  .stories
                                  .map((e) => StoriesWidget(
                                      storiesResponse: ((_aboutUsController
                                                  .baseState
                                                  .value as BaseSuccess)
                                              .data as StoriesAndVideoResponse)
                                          .data
                                          .stories[((_aboutUsController.baseState.value
                                                  as BaseSuccess)
                                              .data as StoriesAndVideoResponse)
                                          .data
                                          .stories
                                          .indexOf(e)]))
                                  .toList()),
                          // child: GridView.builder(
                          //   physics: const ClampingScrollPhysics(),
                          //   padding: EdgeInsets.symmetric(
                          //       horizontal: 10.w, vertical: 16.h),
                          //   shrinkWrap: true,
                          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //       childAspectRatio: 0.9,
                          //       crossAxisCount: 2,
                          //       crossAxisSpacing: 18.w,
                          //       mainAxisSpacing: 18.h),
                          //   itemCount:
                          //       ((_aboutUsController.baseState.value as BaseSuccess)
                          //               .data as StoriesAndVideoResponse)
                          //           .data.stories
                          //           .length,
                          //   itemBuilder: (context, index) {
                          //     return StoriesWidget(
                          //         storiesResponse: ((_aboutUsController
                          //                     .baseState.value as BaseSuccess)
                          //                 .data as StoriesAndVideoResponse)
                          //             .data.stories[index]);
                          //   },
                          // ),
                        ),
                        SizedBox(height: 30.h),
                      ],
                    );
    });
  }
}

class _FooterSection extends StatelessWidget {
  const _FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 6,
            ),
            SocialMediaWidget(
              imageUrl: IconAssetPath.facebook,
              url: Platform.isIOS
                  ? 'fb://profile/rasancomnp'
                  : 'fb://page/rasancomnp',
              fallbackUrl: 'https://www.facebook.com/rasancomnp',
            ),
            // const SocialMediaWidget(
            //   imageUrl: IconAssetPath.twitter,
            //   url:
            //       'twitter.com/imVkohli?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
            //   fallbackUrl: 'https://www.facebook.com/virat.kohli',
            // ),
            const SocialMediaWidget(
              imageUrl: IconAssetPath.instagram,
              url: 'instagram://user?username=digital.rasan',
              fallbackUrl: 'https://www.instagram.com/digital.rasan/?hl=en',
            ),
            const SocialMediaWidget(
              imageUrl: IconAssetPath.youtube,
              url: 'youtube://www.youtube.com/@rasan-onlinewholesaleinnep9571',
              fallbackUrl:
                  'https://www.youtube.com/@rasan-onlinewholesaleinnep9571',
            ),
            const SocialMediaWidget(
              imageUrl: IconAssetPath.tiktok,
              url: 'https://www.tiktok.com/@rasantech',
              fallbackUrl: 'https://www.tiktok.com/@rasantech',
            ),
            const Spacer(),
            const SocialMediaWidget(
                imageUrl: IconAssetPath.appstore,
                url: 'https://apps.apple.com/app/rasan/id6444239199'),
            const SocialMediaWidget(
                imageUrl: IconAssetPath.playstore,
                url:
                    'https://play.google.com/store/apps/details?id=com.spark.rasan'),
            const SizedBox(width: 6),
          ],
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text(
                'follow_us_on'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.textColor),
              ),
              const Spacer(),
              Text(
                'platforms'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.textColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 60.h),
        Text(
          'copyright_rasan'.tr,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.grey700, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10.h,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       'contact_us'.tr,
        //       style: Theme.of(context).textTheme.subtitle1?.copyWith(
        //           color: AppColors.primaryDEF, fontWeight: FontWeight.w400),
        //     ),
        //     SizedBox(width: 12.w),
        //     Container(
        //       height: 18,
        //       width: 2,
        //       color: AppColors.grey200,
        //     ),
        //     SizedBox(width: 12.w),
        //     Text(
        //       'become_rasan_franchise'.tr,
        //       style: Theme.of(context).textTheme.subtitle1?.copyWith(
        //           color: AppColors.primaryDEF, fontWeight: FontWeight.w400),
        //     ),
        //     SizedBox(width: 12.w),
        //     Container(
        //       height: 18,
        //       width: 2,
        //       color: AppColors.grey200,
        //     ),
        //     SizedBox(width: 12.w),
        //     Text(
        //       'privacy_policy1'.tr,
        //       style: Theme.of(context).textTheme.subtitle1?.copyWith(
        //           color: AppColors.primaryDEF, fontWeight: FontWeight.w400),
        //     ),
        //     SizedBox(width: 12.w),
        //     Container(
        //       height: 18,
        //       width: 2,
        //       color: AppColors.grey200,
        //     ),
        //     SizedBox(width: 12.w),
        //   ],
        // )
      ],
    );
  }
}
