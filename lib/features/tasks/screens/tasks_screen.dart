import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/features/tasks/cubit/tasks_cubit.dart';
import 'package:todo_app/features/tasks/cubit/tasks_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/widgets/add_button.dart';
import 'package:todo_app/features/tasks/widgets/task_card.dart';
import 'package:todo_app/features/tasks/widgets/welcome_widget.dart';
import 'package:todo_app/shared/widgets/circular_loading.dart';
import 'package:todo_app/shared/widgets/custom_safe_area.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

@RoutePage()
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Future<void> getTasks() async {
    await BlocProvider.of<TasksCubit>(context).getTasks();
  }

  final ScrollController _scrollController = ScrollController();

  // Check the scrolling postion and fetch a new page in the end of the page
  void _onScrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll == currentScroll) {
      getTasks();
    }
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TasksCubit>(context).refresh();
    getTasks();
    _scrollController.addListener(_onScrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        floatingActionButton: AddButton(
          addTaskLocally: BlocProvider.of<TasksCubit>(context).addTaskLocally,
        ),
        backgroundColor: AppColors.mainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcoming part with user first and last name
            const WelcomeWidget(),
            // Tasks list with pagination
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: BlocBuilder<TasksCubit, TasksState>(
                  buildWhen: (previous, current) =>
                      current is GetTasksDone ||
                      current is GetTasksError ||
                      current is GetTasksLoading,
                  builder: (context, state) {
                    if (state is GetTasksDone) {
                      return _buildMyBookingList(state.data, state.noMoreData);
                    }
                    if (state is GetTasksError) {
                      return Center(
                        child: Text(
                          state.error.message,
                          style: AppStyles.bold.copyWith(fontSize: 20.sp),
                        ),
                      );
                    }
                    return const Center(child: CircularLoading());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tasks list with animation
  Widget _buildMyBookingList(List<Task>? tasks, bool? noMoreData) {
    return ListView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          children: [
            ...List<Widget>.from(
              tasks!.asMap().entries.map(
                    (e) => AnimationLimiter(
                      child: Column(
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 375),
                          childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(
                              child: widget,
                            ),
                          ),
                          children: [
                            Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: TaskCard(
                                  id: e.value.id!,
                                  index: e.key,
                                  title: e.value.todo!,
                                  isCompleted: e.value.completed!,
                                  userId: e.value.userId!,
                                  editTaskLocally:
                                      BlocProvider.of<TasksCubit>(context)
                                          .editTaskLocally,
                                  deleteTaskLocally:
                                      BlocProvider.of<TasksCubit>(context)
                                          .deleteTaskLocally,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
            if (noMoreData!) ...[
              const SizedBox(),
            ] else ...[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const CircularProgressIndicator(
                  color: AppColors.thiColor,
                ),
              ),
            ]
          ],
        ),
      ],
    );
  }
}
