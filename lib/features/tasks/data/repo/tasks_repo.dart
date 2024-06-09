import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/data/models/tasks_list_model.dart';

abstract class TasksRepo {
  Future<DataState<TasksList>> getTasks({required int page});

  Future<DataState<Task>> addTask({required Task task});

  Future<DataState<Task>> editTask({required Task task});

  Future<DataState<Task>> deleteTask({required int taskId});
}
