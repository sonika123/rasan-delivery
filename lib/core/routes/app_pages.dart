import 'package:get/get.dart';
import 'package:rasan_delivery/core/routes/app_routes.dart';
import 'package:rasan_delivery/features/about_us/about_us_bindings.dart';
import 'package:rasan_delivery/features/about_us/presentation/pages/about_us_screen.dart';
import 'package:rasan_delivery/features/authentication/otp/otp_bindings.dart';
import 'package:rasan_delivery/features/authentication/otp/presentation/pages/otp_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_details_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_started_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/thank_you_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/delivery_bindings.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_list_by_orderid_screen.dart';
import 'package:rasan_delivery/features/delivery/delivery_list/presentation/pages/delivery_list_screen.dart';
import 'package:rasan_delivery/features/privacy_policy/presentation/pages/privacy_policy_screen.dart';
import 'package:rasan_delivery/features/privacy_policy/privacy_policy_bindings.dart';
import 'package:rasan_delivery/features/terms_and_condition/presentation/pages/terms_and_condition_screen.dart';
import 'package:rasan_delivery/features/terms_and_condition/terms_and_condition_bindings.dart';
import '../../features/authentication/mobile_number/mobile_number_bindings.dart';
import '../../features/authentication/mobile_number/presentation/pages/mobile_number_screen.dart';
import '../../features/profile/profile_home_screen/presentation/pages/profile_home_screen.dart';
import '../../features/profile/profile_home_screen/profile_bindings.dart';
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
      bindings: [DeliveryBindings(), ProfileBindings()],
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

    GetPage(
        name: AppRoutes.profileScreen,
        page: () => const ProfileScreen(),
        binding: ProfileBindings()),

    GetPage(
        name: AppRoutes.aboutUsScreen,
        page: () => AboutUsScreen(),
        binding: AboutUsBindings()),

    GetPage(
        name: AppRoutes.termsAndConditionScreen,
        page: () => TermsAndConditionScreen(),
        binding: TermsAndConditionBindings()),

    GetPage(
        name: AppRoutes.privacyPolicyScreen,
        page: () => PrivacyPolicyScreen(),
        binding: PrivacyPolicyBindings()),
  ];
}
