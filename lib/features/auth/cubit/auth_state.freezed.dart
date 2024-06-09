// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginDone,
    required TResult Function(dynamic error) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginDone,
    TResult? Function(dynamic error)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginDone,
    TResult Function(dynamic error)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoginLoading<T> value) loginLoading,
    required TResult Function(AuthLoginDone<T> value) loginDone,
    required TResult Function(AuthLoginError<T> value) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoginLoading<T> value)? loginLoading,
    TResult? Function(AuthLoginDone<T> value)? loginDone,
    TResult? Function(AuthLoginError<T> value)? loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoginLoading<T> value)? loginLoading,
    TResult Function(AuthLoginDone<T> value)? loginDone,
    TResult Function(AuthLoginError<T> value)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthEmptyImplCopyWith<T, $Res> {
  factory _$$AuthEmptyImplCopyWith(
          _$AuthEmptyImpl<T> value, $Res Function(_$AuthEmptyImpl<T>) then) =
      __$$AuthEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthEmptyImpl<T>>
    implements _$$AuthEmptyImplCopyWith<T, $Res> {
  __$$AuthEmptyImplCopyWithImpl(
      _$AuthEmptyImpl<T> _value, $Res Function(_$AuthEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEmptyImpl<T> implements AuthEmpty<T> {
  const _$AuthEmptyImpl();

  @override
  String toString() {
    return 'AuthState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginDone,
    required TResult Function(dynamic error) loginError,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginDone,
    TResult? Function(dynamic error)? loginError,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginDone,
    TResult Function(dynamic error)? loginError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoginLoading<T> value) loginLoading,
    required TResult Function(AuthLoginDone<T> value) loginDone,
    required TResult Function(AuthLoginError<T> value) loginError,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoginLoading<T> value)? loginLoading,
    TResult? Function(AuthLoginDone<T> value)? loginDone,
    TResult? Function(AuthLoginError<T> value)? loginError,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoginLoading<T> value)? loginLoading,
    TResult Function(AuthLoginDone<T> value)? loginDone,
    TResult Function(AuthLoginError<T> value)? loginError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AuthEmpty<T> implements AuthState<T> {
  const factory AuthEmpty() = _$AuthEmptyImpl<T>;
}

/// @nodoc
abstract class _$$AuthLoginLoadingImplCopyWith<T, $Res> {
  factory _$$AuthLoginLoadingImplCopyWith(_$AuthLoginLoadingImpl<T> value,
          $Res Function(_$AuthLoginLoadingImpl<T>) then) =
      __$$AuthLoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthLoginLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthLoginLoadingImpl<T>>
    implements _$$AuthLoginLoadingImplCopyWith<T, $Res> {
  __$$AuthLoginLoadingImplCopyWithImpl(_$AuthLoginLoadingImpl<T> _value,
      $Res Function(_$AuthLoginLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoginLoadingImpl<T> implements AuthLoginLoading<T> {
  const _$AuthLoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginDone,
    required TResult Function(dynamic error) loginError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginDone,
    TResult? Function(dynamic error)? loginError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginDone,
    TResult Function(dynamic error)? loginError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoginLoading<T> value) loginLoading,
    required TResult Function(AuthLoginDone<T> value) loginDone,
    required TResult Function(AuthLoginError<T> value) loginError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoginLoading<T> value)? loginLoading,
    TResult? Function(AuthLoginDone<T> value)? loginDone,
    TResult? Function(AuthLoginError<T> value)? loginError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoginLoading<T> value)? loginLoading,
    TResult Function(AuthLoginDone<T> value)? loginDone,
    TResult Function(AuthLoginError<T> value)? loginError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class AuthLoginLoading<T> implements AuthState<T> {
  const factory AuthLoginLoading() = _$AuthLoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AuthLoginDoneImplCopyWith<T, $Res> {
  factory _$$AuthLoginDoneImplCopyWith(_$AuthLoginDoneImpl<T> value,
          $Res Function(_$AuthLoginDoneImpl<T>) then) =
      __$$AuthLoginDoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AuthLoginDoneImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthLoginDoneImpl<T>>
    implements _$$AuthLoginDoneImplCopyWith<T, $Res> {
  __$$AuthLoginDoneImplCopyWithImpl(_$AuthLoginDoneImpl<T> _value,
      $Res Function(_$AuthLoginDoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AuthLoginDoneImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AuthLoginDoneImpl<T> implements AuthLoginDone<T> {
  const _$AuthLoginDoneImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.loginDone(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginDoneImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginDoneImplCopyWith<T, _$AuthLoginDoneImpl<T>> get copyWith =>
      __$$AuthLoginDoneImplCopyWithImpl<T, _$AuthLoginDoneImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginDone,
    required TResult Function(dynamic error) loginError,
  }) {
    return loginDone(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginDone,
    TResult? Function(dynamic error)? loginError,
  }) {
    return loginDone?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginDone,
    TResult Function(dynamic error)? loginError,
    required TResult orElse(),
  }) {
    if (loginDone != null) {
      return loginDone(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoginLoading<T> value) loginLoading,
    required TResult Function(AuthLoginDone<T> value) loginDone,
    required TResult Function(AuthLoginError<T> value) loginError,
  }) {
    return loginDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoginLoading<T> value)? loginLoading,
    TResult? Function(AuthLoginDone<T> value)? loginDone,
    TResult? Function(AuthLoginError<T> value)? loginError,
  }) {
    return loginDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoginLoading<T> value)? loginLoading,
    TResult Function(AuthLoginDone<T> value)? loginDone,
    TResult Function(AuthLoginError<T> value)? loginError,
    required TResult orElse(),
  }) {
    if (loginDone != null) {
      return loginDone(this);
    }
    return orElse();
  }
}

abstract class AuthLoginDone<T> implements AuthState<T> {
  const factory AuthLoginDone(final T data) = _$AuthLoginDoneImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$AuthLoginDoneImplCopyWith<T, _$AuthLoginDoneImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoginErrorImplCopyWith<T, $Res> {
  factory _$$AuthLoginErrorImplCopyWith(_$AuthLoginErrorImpl<T> value,
          $Res Function(_$AuthLoginErrorImpl<T>) then) =
      __$$AuthLoginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$AuthLoginErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthLoginErrorImpl<T>>
    implements _$$AuthLoginErrorImplCopyWith<T, $Res> {
  __$$AuthLoginErrorImplCopyWithImpl(_$AuthLoginErrorImpl<T> _value,
      $Res Function(_$AuthLoginErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthLoginErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AuthLoginErrorImpl<T> implements AuthLoginError<T> {
  const _$AuthLoginErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AuthState<$T>.loginError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginErrorImplCopyWith<T, _$AuthLoginErrorImpl<T>> get copyWith =>
      __$$AuthLoginErrorImplCopyWithImpl<T, _$AuthLoginErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginDone,
    required TResult Function(dynamic error) loginError,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginDone,
    TResult? Function(dynamic error)? loginError,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginDone,
    TResult Function(dynamic error)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoginLoading<T> value) loginLoading,
    required TResult Function(AuthLoginDone<T> value) loginDone,
    required TResult Function(AuthLoginError<T> value) loginError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoginLoading<T> value)? loginLoading,
    TResult? Function(AuthLoginDone<T> value)? loginDone,
    TResult? Function(AuthLoginError<T> value)? loginError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoginLoading<T> value)? loginLoading,
    TResult Function(AuthLoginDone<T> value)? loginDone,
    TResult Function(AuthLoginError<T> value)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class AuthLoginError<T> implements AuthState<T> {
  const factory AuthLoginError(final dynamic error) = _$AuthLoginErrorImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$AuthLoginErrorImplCopyWith<T, _$AuthLoginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
