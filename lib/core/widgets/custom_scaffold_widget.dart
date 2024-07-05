import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.scaffoldKey,
    required this.body,
    this.appBar,
    this.drawer,
    this.bottomWidget,
  }) : super(key: key);

  final Key? scaffoldKey;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      appBar: appBar,
      drawer: drawer,
      body: body,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      bottomNavigationBar: bottomWidget,
    );
  }
}
