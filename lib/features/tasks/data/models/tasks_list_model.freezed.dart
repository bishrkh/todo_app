// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksList _$TasksListFromJson(Map<String, dynamic> json) {
  return _TasksList.fromJson(json);
}

/// @nodoc
mixin _$TasksList {
  List<Task> get todos => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksListCopyWith<TasksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListCopyWith<$Res> {
  factory $TasksListCopyWith(TasksList value, $Res Function(TasksList) then) =
      _$TasksListCopyWithImpl<$Res, TasksList>;
  @useResult
  $Res call({List<Task> todos, int total, int skip, int limit});
}

/// @nodoc
class _$TasksListCopyWithImpl<$Res, $Val extends TasksList>
    implements $TasksListCopyWith<$Res> {
  _$TasksListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksListImplCopyWith<$Res>
    implements $TasksListCopyWith<$Res> {
  factory _$$TasksListImplCopyWith(
          _$TasksListImpl value, $Res Function(_$TasksListImpl) then) =
      __$$TasksListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> todos, int total, int skip, int limit});
}

/// @nodoc
class __$$TasksListImplCopyWithImpl<$Res>
    extends _$TasksListCopyWithImpl<$Res, _$TasksListImpl>
    implements _$$TasksListImplCopyWith<$Res> {
  __$$TasksListImplCopyWithImpl(
      _$TasksListImpl _value, $Res Function(_$TasksListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$TasksListImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksListImpl with DiagnosticableTreeMixin implements _TasksList {
  const _$TasksListImpl(
      {required final List<Task> todos,
      required this.total,
      required this.skip,
      required this.limit})
      : _todos = todos;

  factory _$TasksListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksListImplFromJson(json);

  final List<Task> _todos;
  @override
  List<Task> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksList(todos: $todos, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksList'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('skip', skip))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksListImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksListImplCopyWith<_$TasksListImpl> get copyWith =>
      __$$TasksListImplCopyWithImpl<_$TasksListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksListImplToJson(
      this,
    );
  }
}

abstract class _TasksList implements TasksList {
  const factory _TasksList(
      {required final List<Task> todos,
      required final int total,
      required final int skip,
      required final int limit}) = _$TasksListImpl;

  factory _TasksList.fromJson(Map<String, dynamic> json) =
      _$TasksListImpl.fromJson;

  @override
  List<Task> get todos;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$TasksListImplCopyWith<_$TasksListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
