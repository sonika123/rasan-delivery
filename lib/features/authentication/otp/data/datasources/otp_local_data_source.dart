import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/constants/app_constants.dart';

abstract class OtpLocalDataSource {
  Future<void> saveTokenToDevice(String token);

  Future<void> removeTokenFromDevice();
}

class OtpLocalDataSourceImpl implements OtpLocalDataSource {
  @override
  Future<void> saveTokenToDevice(String token) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(tokenKey, token);
  }

  @override
  Future<void> removeTokenFromDevice() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
