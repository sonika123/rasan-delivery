import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    Key? key,
    this.shrinkWrap,
    required this.itemCount,
    this.customSeparatorBuilder,
    required this.itemBuilderWidget,
  }) : super(key: key);

  final bool? shrinkWrap;
  final int itemCount;
  final Widget? customSeparatorBuilder;
  final Widget Function(BuildContext, int) itemBuilderWidget;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: shrinkWrap ?? true,
      itemCount: itemCount,
      separatorBuilder: (context, index) {
        return customSeparatorBuilder ?? SizedBox(height: 6.h);
      },
      itemBuilder: itemBuilderWidget,
    );
  }
}
