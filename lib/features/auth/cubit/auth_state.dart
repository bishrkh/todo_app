import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.empty() = AuthEmpty<T>;
  const factory AuthState.loginLoading() = AuthLoginLoading<T>;
  const factory AuthState.loginDone(T data) = AuthLoginDone<T>;
  const factory AuthState.loginError(dynamic error) = AuthLoginError<T>;
}
