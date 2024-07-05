import 'package:get/get.dart';

import '../../../../../core/base_response/base_state/base_state.dart';
import '../../domain/entities/response/user_profile/user_profile_response.dart';
import '../../domain/repository/profile_repository.dart';
class ProfileController extends GetxController {
  RxString graphTimePeriod = 'Last Year'.obs;
  final baseState = const BaseState.initial().obs;
  RxDouble profileCompletePercentage = 0.0.obs;

  calculateProfilePercentage(UserProfileData data) {
    var shop = data.shop;
    var info = [
      data.phone,
      shop?.name,
      shop?.pan_vat_number,
      data.full_name,
      data.alternate_phone,
      data.date_of_birth,
      shop?.store_photo?.thumbnail,
      shop?.citizenship_front?.thumbnail,
      shop?.citizenship_back?.thumbnail,
      shop?.pan_vat_certificate?.thumbnail,
      shop?.house_rent_agreement?.thumbnail,
      shop?.retailer_agreement
    ];
    double percent =
        info.where((v) => v != null && v != '').length / info.length;
    percent = (percent * 100).round().toDouble();
    profileCompletePercentage.value = percent;
  }

  final ProfileRepository _profileRepository = Get.find();
  UserProfileData userProfileData = const UserProfileData(
      id: 0, is_submitted: false, is_verified: false, phone: 'phone');

  Future<void> getUserProfile() async {
    baseState.value = const BaseState.loading();
    final response = await _profileRepository.fetchUserProfile();
    response.fold((failure) {
      baseState.value = BaseState.error(failure);
      // CustomSnackBar.showSnackBar(message: failure.message);
    }, (success) {
      baseState.value = BaseState<UserProfileData>.success(data: success.data);
      calculateProfilePercentage((baseState.value as BaseSuccess).data);
      userProfileData = success.data;
    });
  }
}
