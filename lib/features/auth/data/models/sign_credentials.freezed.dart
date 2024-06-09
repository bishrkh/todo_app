// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignCredentials _$SignCredentialsFromJson(Map<String, dynamic> json) {
  return _SignCredentials.fromJson(json);
}

/// @nodoc
mixin _$SignCredentials {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignCredentialsCopyWith<SignCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignCredentialsCopyWith<$Res> {
  factory $SignCredentialsCopyWith(
          SignCredentials value, $Res Function(SignCredentials) then) =
      _$SignCredentialsCopyWithImpl<$Res, SignCredentials>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$SignCredentialsCopyWithImpl<$Res, $Val extends SignCredentials>
    implements $SignCredentialsCopyWith<$Res> {
  _$SignCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignCredentialsImplCopyWith<$Res>
    implements $SignCredentialsCopyWith<$Res> {
  factory _$$SignCredentialsImplCopyWith(_$SignCredentialsImpl value,
          $Res Function(_$SignCredentialsImpl) then) =
      __$$SignCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignCredentialsImplCopyWithImpl<$Res>
    extends _$SignCredentialsCopyWithImpl<$Res, _$SignCredentialsImpl>
    implements _$$SignCredentialsImplCopyWith<$Res> {
  __$$SignCredentialsImplCopyWithImpl(
      _$SignCredentialsImpl _value, $Res Function(_$SignCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignCredentialsImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignCredentialsImpl
    with DiagnosticableTreeMixin
    implements _SignCredentials {
  const _$SignCredentialsImpl({required this.username, required this.password});

  factory _$SignCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignCredentialsImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignCredentials(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignCredentials'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignCredentialsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignCredentialsImplCopyWith<_$SignCredentialsImpl> get copyWith =>
      __$$SignCredentialsImplCopyWithImpl<_$SignCredentialsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignCredentialsImplToJson(
      this,
    );
  }
}

abstract class _SignCredentials implements SignCredentials {
  const factory _SignCredentials(
      {required final String username,
      required final String password}) = _$SignCredentialsImpl;

  factory _SignCredentials.fromJson(Map<String, dynamic> json) =
      _$SignCredentialsImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignCredentialsImplCopyWith<_$SignCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
