import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as getx;
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_constants.dart';
import '../../widgets/custom_alert_dialog_widget.dart';
import '../../widgets/session_expired_widget.dart';
import '../endpoints/endpoints.dart';

class ApiInterceptors implements Interceptor {
  final SessionExpiredController _sessionExpiredController =
      getx.Get.put(SessionExpiredController());

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    try {
      if (err.response?.statusCode == 401) {
        if (_sessionExpiredController.showDialog.value) {
          CustomAlertDialog.showAlertDialog(
            padding: const EdgeInsets.all(12),
            isDismissible: false,
            context: getx.Get.context!,
            widget: const SessionExpiredWidget(),
          );
          _sessionExpiredController.showDialog.value = false;
        }
        final SharedPreferences pref = await SharedPreferences.getInstance();
        pref.clear();

        return;
      }
    } catch (e) {
      return handler.next(err);
    }
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(tokenKey);
    if (token != null) {
      if (!(options.path.contains(Endpoints.login) ||
          options.path.contains(Endpoints.requestOtp))) {
        options.headers.putIfAbsent('Authorization', () => 'Token $token');
      }
    }
    options.receiveDataWhenStatusError = true;
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}

///This class avoids showing the pop-up multiple times during 401 error code...
class SessionExpiredController extends getx.GetxController {
  getx.RxBool showDialog = true.obs;
}
