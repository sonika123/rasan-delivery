import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';

import 'app_interceptors.dart';


const defaultConnectionTimeout = Duration(seconds: 90);
const defaultReceiveTimeout = Duration(seconds: 90);

Dio buildDio() {
  final options = BaseOptions(
    connectTimeout: defaultConnectionTimeout.inMilliseconds,
    receiveTimeout: defaultReceiveTimeout.inMilliseconds,
  );
  final dio = Dio(options);
  dio.interceptors.addAll([ApiInterceptors(), dioLoggerInterceptor]);
  return dio;
}
