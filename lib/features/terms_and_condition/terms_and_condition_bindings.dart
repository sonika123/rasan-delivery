import 'package:get/get.dart';
import 'package:rasan_delivery/features/terms_and_condition/presentation/controller/terms_and_condition_controller.dart';

class TermsAndConditionBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsAndConditionController());
  }
}
