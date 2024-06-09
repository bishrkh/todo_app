import 'package:dio/dio.dart';
import 'package:todo_app/core/api/dio_consumer.dart';
import 'package:todo_app/core/api/end_points.dart';
import 'package:todo_app/core/resources/data_repo_impl.dart';
import 'package:todo_app/core/resources/data_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/data/models/tasks_list_model.dart';
import 'package:todo_app/features/tasks/data/repo/tasks_repo.dart';

class TasksRepoImpl implements TasksRepo {
  DioConsumer dioConsumer;
  DataRepoImpl dataRepoImpl;
  TasksRepoImpl({
    required this.dioConsumer,
    required this.dataRepoImpl,
  });
  @override
  Future<DataState<TasksList>> getTasks({required int page}) async {
    Response? response;

    response = await dioConsumer.get(EndPoints.baseURL + EndPoints.getTasks,
        queryParameters: {
          Apikeys.limit: Apikeys.PAGE_SIZE,
          Apikeys.skip: Apikeys.PAGE_SIZE * page
        });
    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: TasksList.fromJson);
  }

  @override
  Future<DataState<Task>> addTask({required Task task}) async {
    Response? response;

    response = await dioConsumer.post(EndPoints.baseURL + EndPoints.addTask,
        data: task.toJson());
    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: Task.fromJson);
  }

  @override
  Future<DataState<Task>> editTask({required Task task}) async {
    Response? response;
    response = await dioConsumer.patch(
      EndPoints.baseURL + EndPoints.updateDeleteTask + task.id.toString(),
      data: {"todo": task.todo, "completed": task.completed},
    );
    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: Task.fromJson);
  }

  @override
  Future<DataState<Task>> deleteTask({required int taskId}) async {
    Response? response;

    response = await dioConsumer.delete(
      EndPoints.baseURL + EndPoints.updateDeleteTask + taskId.toString(),
    );
    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: Task.fromJson);
  }
}
