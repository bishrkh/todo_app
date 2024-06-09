import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/auth/data/models/sign_credentials.dart';
import 'package:todo_app/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<DataState<User>> logIn({required SignCredentials signCredentials});
}
