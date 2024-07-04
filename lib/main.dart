import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rasan_delivery/core/utils/translation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constants/app_constants.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/colors.dart';
import 'core/utils/asset_path.dart';
import 'get_bindings.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  // runApp(const MyApp());
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (context, _) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        translations: LanguageTranslation(),
        initialRoute: AppPages.initialSplash,
        initialBinding: GetBindings(),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          fontFamily: 'Lato',
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: AppColors.textColor),
            displayMedium: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
            displaySmall: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
            headlineMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
            headlineSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
            titleLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
            ),
            bodySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
            bodyLarge: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
            ),
            titleMedium: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
            ),
            titleSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
          ),
          dividerTheme: DividerThemeData(
            thickness: 1.h,
            color: AppColors.grey100,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColors.primaryColor,
              ),
              foregroundColor: MaterialStateProperty.all<Color>(
                AppColors.lightGreyColor,
              ),
            ),
          ),
        ),
      );
    },
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () => _getInitialRoute());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.updateLocale(const Locale('en'));
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(
          child: Image.asset(
        ImageAssetPath.rasanLogoPath,
        width: Get.width * 0.8,
        fit: BoxFit.fill,
      )),
    );
  }

  //method to show authentication screen or list screen according to token
  _getInitialRoute() async {
      final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      final token = sharedPreferences.getString(tokenKey);
      if (token != null) {
        return Get.offAllNamed(AppRoutes.deliveryListScreen);
      } else {
        return Get.offAllNamed(AppRoutes.mobileNumberScreen);
      }
  }
}
