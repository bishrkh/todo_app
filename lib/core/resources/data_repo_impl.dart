import 'package:dio/dio.dart';

import 'data_state.dart';

class DataRepoImpl {
  Future<DataState<T>> dataRepoRequest<T, S>(
      {required Response response, required Function(S) fromJson}) async {
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final object = fromJson(response.data);
        return DataSuccess(object as T);
      } else if (response.statusCode == 500) {
        return DataFailed(
          DioError(
            message: 'No internet',
            requestOptions: response.requestOptions,
          ),
        );
      } else {
        return DataFailed(
          DioError(
            message: response.data["message"],
            response: response,
            requestOptions: response.requestOptions,
          ),
        );
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
