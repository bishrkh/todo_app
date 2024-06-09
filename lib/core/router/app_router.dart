import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

/// App router manager
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  static const String signInScreen = '/';
  static const String tasksScreen = '/tasksScreen';

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SignInRoute.page, path: signInScreen),
        AutoRoute(page: TasksRoute.page, path: tasksScreen),
      ];
}
