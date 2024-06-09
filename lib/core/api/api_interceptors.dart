import 'package:dio/dio.dart';

import '../../cache/cache_helper.dart';
import '/core/api/end_points.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.connectTimeout = const Duration(seconds: 10);
    options.headers[Apikeys.accept] = Apikeys.appJson;
    // options.headers[Apikeys.content] = Apikeys.appJson;

    options.followRedirects = false;
    options.validateStatus = (status) {
      return status! < 500;
    };
    String? token = CacheHelper().getData(key: Apikeys.token);
    if (CacheHelper().getData(key: Apikeys.token) != null) {
      options.headers[Apikeys.authorization] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
