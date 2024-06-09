import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/auth/cubit/auth_state.dart';
import 'package:todo_app/features/auth/data/models/sign_credentials.dart';

import 'package:todo_app/features/auth/data/repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(const AuthState.empty());

  Future<void> signIn({required SignCredentials signCredentials}) async {
    emit(const AuthState.loginLoading());
    final dataState = await _authRepo.logIn(signCredentials: signCredentials);
    if (dataState is DataSuccess) {
      emit(AuthState.loginDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(AuthState.loginError(dataState.error!));
    }
  }
}
