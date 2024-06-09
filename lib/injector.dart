import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/cache/cache_helper.dart';
import 'package:todo_app/core/api/dio_consumer.dart';
import 'package:todo_app/core/resources/data_repo_impl.dart';
import 'package:todo_app/features/auth/cubit/auth_cubit.dart';
import 'package:todo_app/features/auth/data/repo/auth_repo.dart';
import 'package:todo_app/features/auth/data/repo/auth_repo_impl.dart';
import 'package:todo_app/features/tasks/cubit/tasks_cubit.dart';
import 'package:todo_app/features/tasks/data/repo/tasks_repo.dart';
import 'package:todo_app/features/tasks/data/repo/tasks_repo_impl.dart';

final injector = GetIt.asNewInstance();

Future<void> initDependencies() async {
  await CacheHelper().init();
  injector.registerSingleton<Dio>(Dio());
  injector.registerSingleton<DioConsumer>(DioConsumer(
    dio: injector(),
  ));
  injector.registerSingleton<CacheHelper>(CacheHelper());
  injector.registerSingleton<DataRepoImpl>(DataRepoImpl());

  //Auth
  injector.registerSingleton<AuthRepo>(AuthRepoImpl(
      dioConsumer: injector(),
      dataRepoImpl: injector(),
      cacheHelper: injector()));
  injector.registerFactory<AuthCubit>(() => AuthCubit(injector()));

  //Categories
  injector.registerSingleton<TasksRepo>(TasksRepoImpl(
    dioConsumer: injector(),
    dataRepoImpl: injector(),
  ));
  injector.registerFactory<TasksCubit>(() => TasksCubit(injector()));
}
