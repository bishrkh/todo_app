// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/features/auth/widgets/custom_button.dart';
import 'package:todo_app/features/tasks/cubit/tasks_cubit.dart';
import 'package:todo_app/features/tasks/cubit/tasks_state.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/shared/functions/loading_dialog.dart';

// ignore: must_be_immutable
class EditDeleteTaskWidget extends StatefulWidget {
  final int id;
  final int index;
  final String title;
  final bool isCompleted;
  final int userId;
  final Function(int, Task) editTaskLocally;
  final Function(int) deleteTaskLocally;

  const EditDeleteTaskWidget({
    super.key,
    required this.id,
    required this.index,
    required this.title,
    required this.isCompleted,
    required this.userId,
    required this.editTaskLocally,
    required this.deleteTaskLocally,
  });

  @override
  State<EditDeleteTaskWidget> createState() => _EditDeleteTaskWidgetState();
}

class _EditDeleteTaskWidgetState extends State<EditDeleteTaskWidget> {
  Future<void> editTask(Task task) async {
    await BlocProvider.of<TasksCubit>(context).editTask(
      task: task,
    );
  }

  Future<void> deleteTask() async {
    await BlocProvider.of<TasksCubit>(context).deleteTask(
      taskId: widget.id,
    );
  }

  bool isCompleted = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.title;
    isCompleted = widget.isCompleted;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksCubit, TasksState>(
      listener: (context, state) {
        if (state is UpdateTaskDone) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: S.of(context).done,
          );
          widget.editTaskLocally(widget.index, state.data);
          Navigator.pop(context);
        }
        if (state is DeleteTaskDone) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: S.of(context).done,
          );
          widget.deleteTaskLocally(widget.index);
          Navigator.pop(context);
        }
        if (state is UpdateTaskError) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: state.error.message,
          );
        }
        if (state is DeleteTaskError) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: state.error.message,
          );
        }
        if (state is UpdateTaskLoading || state is DeleteTaskLoading) {
          loadingDialog(context);
        }
      },
      child: SizedBox(
        height: 300.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextFormField(
                  cursorColor: AppColors.mainColor,
                  controller: _controller,
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
              // Completed part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).completed,
                    style: AppStyles.medium.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  Switch(
                      value: isCompleted,
                      activeColor: AppColors.mainColor,
                      onChanged: (value) {
                        setState(() {
                          isCompleted = value;
                        });
                      })
                ],
              ),
              // Edit button
              CustomButton(
                onPress: () {
                  if (_controller.text.isNotEmpty &&
                      (_controller.text != widget.title ||
                          isCompleted != widget.isCompleted)) {
                    editTask(
                      Task(
                        id: widget.id,
                        todo: _controller.text,
                        completed: isCompleted,
                        userId: widget.userId,
                      ),
                    );
                  }
                },
                title: S.of(context).editTask,
                width: double.infinity,
                height: 50.h,
                color: AppColors.ligthPurple,
                radius: 40.r,
              ),
              10.verticalSpace,
              // Delete button
              CustomButton(
                onPress: () {
                  deleteTask();
                },
                title: S.of(context).deleteTask,
                width: double.infinity,
                height: 50.h,
                color: AppColors.secColor,
                radius: 40.r,
              )
            ],
          ),
        ),
      ),
    );
  }
}
