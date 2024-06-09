import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_state.freezed.dart';

@freezed
class TasksState<T> with _$TasksState<T> {
  const factory TasksState.empty() = TasksEmpty<T>;
  const factory TasksState.getTasksLoading() = GetTasksLoading<T>;
  const factory TasksState.getTasksDone(T data, bool noMoreData) =
      GetTasksDone<T>;
  const factory TasksState.getTasksError(dynamic error) = GetTasksError<T>;

///////////////////
  const factory TasksState.addTaskLoading() = AddTaskLoading<T>;
  const factory TasksState.addTaskDone(T data) = AddTaskDone<T>;
  const factory TasksState.addTaskError(dynamic error) = AddTaskError<T>;
/////////////////
  const factory TasksState.updateTaskLoading() = UpdateTaskLoading<T>;
  const factory TasksState.updateTaskDone(T data) = UpdateTaskDone<T>;
  const factory TasksState.updateTaskError(dynamic error) = UpdateTaskError<T>;
////////////////
  const factory TasksState.deleteTaskLoading() = DeleteTaskLoading<T>;
  const factory TasksState.deleteTaskDone(T data) = DeleteTaskDone<T>;
  const factory TasksState.deleteTaskError(dynamic error) = DeleteTaskError<T>;
}
