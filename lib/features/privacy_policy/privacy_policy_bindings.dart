import 'package:get/get.dart';
import 'package:rasan_delivery/features/privacy_policy/presentation/controller/privacy_policy_controller.dart';

class PrivacyPolicyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyPolicyController());
  }
}
