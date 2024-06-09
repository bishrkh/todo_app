// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:todo_app/cache/cache_helper.dart';
import 'package:todo_app/core/api/dio_consumer.dart';
import 'package:todo_app/core/api/end_points.dart';
import 'package:todo_app/core/resources/data_repo_impl.dart';
import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/auth/data/models/sign_credentials.dart';
import 'package:todo_app/features/auth/data/models/user_model.dart';
import 'package:todo_app/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  DioConsumer dioConsumer;
  DataRepoImpl dataRepoImpl;
  CacheHelper cacheHelper;
  AuthRepoImpl({
    required this.dioConsumer,
    required this.dataRepoImpl,
    required this.cacheHelper,
  });
  @override
  Future<DataState<User>> logIn(
      {required SignCredentials signCredentials}) async {
    Response? response;
    response = await dioConsumer.post(EndPoints.baseURL + EndPoints.login,
        data: signCredentials.toJson());

    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: User.fromJson);
  }
}
