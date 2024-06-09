import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/tasks/cubit/tasks_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/data/repo/tasks_repo.dart';

class TasksCubit extends Cubit<TasksState> {
  final TasksRepo _tasksRepo;

  TasksCubit(this._tasksRepo) : super(const TasksState.empty());

  int _page = 0;
  List<Task> _tasks = [];

  bool _noMoreData = false;

  Future<void> getTasks() async {
    if (_tasks.isEmpty) {
      emit(const TasksState.getTasksLoading());
    }
    final dataState = await _tasksRepo.getTasks(page: _page);
    if (dataState is DataSuccess && dataState.data!.todos.isNotEmpty) {
      final tasks = dataState.data!.todos;
      final total = dataState.data!.total;

      _tasks.addAll(tasks);
      final noMoreData = _tasks.length == total;
      _noMoreData = noMoreData;
      emit(TasksState.getTasksDone(List<Task>.from(_tasks), noMoreData));
      _page++;
    }

    if (dataState is DataFailed) {
      emit(TasksState.getTasksError(dataState.error!));
    }
  }

  void refresh() {
    _page = 0;
    _tasks = [];
  }

  Future<void> addTask({required Task task}) async {
    emit(const TasksState.addTaskLoading());
    final dataState = await _tasksRepo.addTask(task: task);
    if (dataState is DataSuccess) {
      emit(TasksState.addTaskDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(TasksState.addTaskError(dataState.error!));
    }
  }

  Future<void> editTask({required Task task}) async {
    emit(const TasksState.updateTaskLoading());
    final dataState = await _tasksRepo.editTask(task: task);
    if (dataState is DataSuccess) {
      emit(TasksState.updateTaskDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(TasksState.updateTaskError(dataState.error!));
    }
  }

  Future<void> deleteTask({required int taskId}) async {
    emit(const TasksState.deleteTaskLoading());
    final dataState = await _tasksRepo.deleteTask(taskId: taskId);
    if (dataState is DataSuccess) {
      emit(TasksState.deleteTaskDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(TasksState.deleteTaskError(dataState.error!));
    }
  }

  // After add task api is being done, add the returned task at the first of the list
  void addTaskLocally(Task task) {
    _tasks.insert(0, task);
    emit(TasksState.getTasksDone(List<Task>.from(_tasks), _noMoreData));
  }

  // After edit task api is being done, change the task directly from the list
  void editTaskLocally(int index, Task task) {
    _tasks[index] = task;
    emit(TasksState.getTasksDone(List<Task>.from(_tasks), _noMoreData));
  }

  // After delete task api is being done, delete the task directly from the list
  void deleteTaskLocally(int index) {
    _tasks.removeAt(index);
    emit(TasksState.getTasksDone(List<Task>.from(_tasks), _noMoreData));
  }
}
