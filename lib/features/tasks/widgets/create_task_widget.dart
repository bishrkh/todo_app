// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:todo_app/cache/local_user.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/features/auth/widgets/custom_button.dart';
import 'package:todo_app/features/tasks/cubit/tasks_cubit.dart';
import 'package:todo_app/features/tasks/cubit/tasks_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/shared/functions/loading_dialog.dart';

// ignore: must_be_immutable
class CreateTaskWidget extends StatefulWidget {
  Function(Task) addTaskLocally;
  CreateTaskWidget({
    super.key,
    required this.addTaskLocally,
  });

  @override
  State<CreateTaskWidget> createState() => _CreateTaskWidgetState();
}

class _CreateTaskWidgetState extends State<CreateTaskWidget> {
  Future<void> addTask(String todo) async {
    await BlocProvider.of<TasksCubit>(context).addTask(
        task: Task(
            todo: todo, userId: int.parse(LocalUser.id!), completed: false));
  }

  String _todo = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksCubit, TasksState>(
      listener: (context, state) {
        if (state is AddTaskDone) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: S.of(context).done,
          );
          widget.addTaskLocally(state.data);
          Navigator.pop(context);
        }
        if (state is AddTaskError) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: state.error.message,
          );
        }
        if (state is AddTaskLoading) {
          loadingDialog(context);
        }
      },
      child: SizedBox(
        height: 300.h,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 120.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: AppColors.ligthPurple,
              ),
              child: Center(
                child: Text(
                  S.of(context).createNewTask,
                  style: AppStyles.bold
                      .copyWith(fontSize: 20.sp, color: AppColors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: TextFormField(
                cursorColor: AppColors.mainColor,
                onChanged: (value) {
                  setState(() {
                    _todo = value;
                  });
                },
                maxLines: null,
                minLines: 3,
                style: AppStyles.medium.copyWith(fontSize: 13.sp),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    borderSide: const BorderSide(
                        width: 0.5, color: AppColors.ligthPurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    borderSide: const BorderSide(
                        width: 0.5, color: AppColors.ligthPurple),
                  ),
                  hintText: S.of(context).whatDoYouHave,
                  hintStyle: AppStyles.regular.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: CustomButton(
                onPress: () {
                  if (_todo.isNotEmpty) {
                    addTask(_todo);
                  }
                },
                title: S.of(context).addTask,
                width: double.infinity,
                height: 50.h,
                color: AppColors.ligthPurple,
                radius: 40.r,
              ),
            )
          ],
        ),
      ),
    );
  }
}
