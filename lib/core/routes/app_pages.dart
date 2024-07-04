import 'package:get/get.dart';
import 'package:rasan_delivery/core/routes/app_routes.dart';
import 'package:rasan_delivery/features/authentication/otp/otp_bindings.dart';
import 'package:rasan_delivery/features/authentication/otp/presentation/pages/otp_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_details_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_started_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/thank_you_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/delivery_bindings.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_list_by_orderid_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_list_screen.dart';
import '../../features/authentication/mobile_number/mobile_number_bindings.dart';
import '../../features/authentication/mobile_number/presentation/pages/mobile_number_screen.dart';
import '../../main.dart';

class AppPages {
  static const initialSplash = AppRoutes.splashScreen;
  static final routes = [
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
    GetPage(
      name: AppRoutes.mobileNumberScreen,
      page: () => MobileNumberScreen(),
      binding: MobileNumberBindings(),
    ),
    GetPage(
        name: AppRoutes.otpScreen,
        page: () => const OtpScreen(),
        binding: OtpBindings()),

    GetPage(
      name: AppRoutes.deliveryListScreen,
      page: () => const DeliveryListScreen(),
      binding: DeliveryBindings(),
    ),

    GetPage(
      name: AppRoutes.deliveryListByOrderidScreen,
      page: () => const DeliveryListByOrderIdScreen(),
      binding: DeliveryBindings(),
    ),
    GetPage(
      name: AppRoutes.deliveryDetailsScreen,
      page: () => const DeliveryDetailsScreen(),
      binding: DeliveryBindings(),
    ),

    GetPage(
      name: AppRoutes.deliveryStartedScreen,
      page: () => const DeliveryStartedScreen(),
      binding: DeliveryBindings(),
    ),

    GetPage(
      name: AppRoutes.thankYouScreen,
      page: () => const ThankYouScreen(),
      binding: DeliveryBindings(),
    ),

    //TODO change terms and conditions page
    GetPage(
        name: AppRoutes.termsAndConditionScreen,
        page: () => MobileNumberScreen()),

    GetPage(
        name: AppRoutes.privacyPolicyScreen, page: () => MobileNumberScreen()),
  ];
}
