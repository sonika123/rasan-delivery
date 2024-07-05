import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_scaffold_widget.dart';
import '../../domain/terms_and_condition_static_data.dart';
import '../controller/terms_and_condition_controller.dart';
final ScrollController _scrollController = ScrollController();

class TermsAndConditionScreen extends StatelessWidget {
  TermsAndConditionScreen({Key? key}) : super(key: key);
  final TermsAndConditionController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CustomScaffold(
        appBar: CustomAppbar(
          title: _controller.termsAndConditionParentText.value,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: ListView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 20.h),
              Text(
                'terms_and_policies'.tr,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.grey800),
              ),
              SizedBox(height: 12.h),
              Text(
                'read_carefully'.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.grey700),
              ),
              SizedBox(height: 50.h),
              const MarkdownBody(
                data: TermsAndConditionStaticData.termsAndCondition,
              ),

              /*_CustomParentText(title: 'terms_of_service'),
              SizedBox(height: 4.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _CustomChildText(title: 'rasan_terms'),
                    _CustomChildText(title: 'loyalty_points'),
                    _CustomChildText(title: 'promo_code_voucher'),
                    _CustomChildText(title: 'cashbacks'),
                  ],
                ),
              ),
              _CustomParentText(title: 'refund_policy'),
              _CustomParentText(title: 'privacy_policy1'),
              SizedBox(height: 35.h),
              Text(
                _controller.termsAndConditionParentText.value.tr,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: AppColors.grey800),
              ),
              SizedBox(height: 36.h),
              _controller.termsAndConditionParentText.value ==
                      'terms_of_service'
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount:
                          TermsAndConditionStaticData.termsOfServiceData.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TermsAndConditionStaticData
                                  .termsOfServiceData[index]['title']!.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grey800),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              TermsAndConditionStaticData
                                  .termsOfServiceData[index]['body']!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: AppColors.grey700),
                            ),
                            SizedBox(height: 30.h),
                          ],
                        );
                      },
                    )
                  : _controller.termsAndConditionParentText.value ==
                          'refund_policy'
                      ? Text(
                          TermsAndConditionStaticData.returnAndRefundPolicy,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: AppColors.grey700),
                        )
                      : Text(
                          TermsAndConditionStaticData.privacyPolicy,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: AppColors.grey700),
                        ),*/
            ],
          ),
        ),
      );
    });
  }
}

// class _CustomParentText extends StatelessWidget {
//   _CustomParentText({Key? key, required this.title}) : super(key: key);
//   final String title;
//   final TermsAndConditionController _controller = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         _controller.termsAndConditionParentText.value = title;
//       },
//       child: Padding(
//         padding: EdgeInsets.only(bottom: 10.h, right: 100.w, top: 10.h),
//         child: Text(
//           title.tr,
//           style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//               color: _controller.termsAndConditionParentText.value == title
//                   ? AppColors.primaryDEF
//                   : AppColors.grey700),
//         ),
//       ),
//     );
//   }
// }

// class _CustomChildText extends StatelessWidget {
//   _CustomChildText({Key? key, required this.title}) : super(key: key);
//   final String title;
//   final TermsAndConditionController _controller = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         _controller.termsAndConditionChildrenText.value = title;
//         _controller.termsAndConditionParentText.value = 'terms_of_service';
//         _scrollController.animateTo(
//           title == 'rasan_terms'
//               ? _scrollController.position.maxScrollExtent / 2.8
//               : title == 'loyalty_points'
//                   ? _scrollController.position.maxScrollExtent / 2
//                   : title == 'promo_code_voucher'
//                       ? _scrollController.position.maxScrollExtent / 1.2
//                       : _scrollController.position.maxScrollExtent,
//           duration: const Duration(seconds: 1),
//           curve: Curves.fastOutSlowIn,
//         );
//       },
//       child: Padding(
//         padding: EdgeInsets.only(bottom: 10.h, right: 100.w, top: 10.h),
//         child: Obx(() {
//           return Text(
//             title.tr,
//             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                 color: _controller.termsAndConditionChildrenText.value == title
//                     ? AppColors.primaryDEF
//                     : AppColors.grey700),
//           );
//         }),
//       ),
//     );
//   }
// }
