import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../theme/colors.dart';
import '../utils/asset_path.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingWidget;
  final List<Widget>? actionWidgets;
  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(52);

  const CustomAppbar({
    Key? key,
    this.title,
    this.leadingWidget,
    this.actionWidgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      leading: leadingWidget ??
          InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
      title: Text(
        title?.tr ?? '',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: AppColors.primaryColor),
      ),
      centerTitle: true,
      actions: actionWidgets,
    );
  }
}

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final Widget? centerTitleWidget;
  final Widget? leadingWidget;
  final List<Widget>? actionWidgets;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Size get preferredSize => Size.fromHeight(height ?? 52);

  const HomeScreenAppBar({
    Key? key,
    this.height,
    this.centerTitleWidget,
    this.leadingWidget,
    this.actionWidgets,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      leading: leadingWidget ??
          IconButton(
            icon: SvgPicture.asset(
              IconAssetPath.menuIconPath,
            ),
            onPressed: () {
              scaffoldKey!.currentState?.openDrawer();
            },
          ),
      title: centerTitleWidget ??
          SvgPicture.asset(
            IconAssetPath.rasanIconPath,
            height: 24,
            width: 96,
          ),
      actions: actionWidgets ??
          [
            IconButton(
              onPressed: () {
                // Get.toNamed(AppRoutes.tutorialScreen);
              },
              icon:
                  const Icon(Icons.info_outline, color: AppColors.primaryColor),
            ),
            IconButton(
              onPressed: () {
                // Get.toNamed(AppRoutes.notificationScreen);
              },
              icon: SvgPicture.asset(
                IconAssetPath.notificationIconPath,
              ),
            ),
          ],
    );
  }
}

class CustomAppBarAuthentication extends StatelessWidget
    implements PreferredSizeWidget {
  final double? height;
  final Widget? centerTitleWidget;
  final Widget? leadingWidget;
  final List<Widget>? actionWidgets;

  @override
  Size get preferredSize => Size.fromHeight(height ?? 52);

  const CustomAppBarAuthentication({
    Key? key,
    this.height,
    this.centerTitleWidget,
    this.leadingWidget,
    this.actionWidgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: leadingWidget ??
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
      title: centerTitleWidget,
      actions: actionWidgets ??
          [
             Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                onPressed: ()  {}
                /*=> Get.toNamed(AppRoutes.tutorialScreen)*/,
                icon: const Icon(
                  Icons.info_outline,
                  color: AppColors.primaryColor,
                )))
          ],
    );
  }
}
