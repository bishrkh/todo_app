import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/widgets/edit_delete_task_widget.dart';
import 'package:todo_app/generated/l10n.dart';

class TaskCard extends StatelessWidget {
  final int id;
  final int index;
  final String title;
  final bool isCompleted;
  final int userId;
  final Function(int, Task) editTaskLocally;
  final Function(int) deleteTaskLocally;
  const TaskCard(
      {super.key,
      required this.index,
      required this.id,
      required this.title,
      required this.isCompleted,
      required this.userId,
      required this.editTaskLocally,
      required this.deleteTaskLocally});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
        ),
        builder: (context) {
          return StatefulBuilder(
            builder: ((BuildContext context, setStatee) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: EditDeleteTaskWidget(
                  id: id,
                  index: index,
                  title: title,
                  isCompleted: isCompleted,
                  userId: userId,
                  editTaskLocally: editTaskLocally,
                  deleteTaskLocally: deleteTaskLocally,
                ),
              );
            }),
          );
        },
      ),
      child: Container(
        width: double.infinity,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.secColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Row(
            children: [
              SizedBox(
                width: 250.w,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.bold
                      .copyWith(fontSize: 15.sp, color: AppColors.white),
                ),
              ),
              15.horizontalSpace,
              Container(
                width: .1.w,
                height: 70.h,
                color: AppColors.white,
              ),
              4.horizontalSpace,
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  isCompleted ? S.of(context).completed : S.of(context).todo,
                  style: AppStyles.extraBoldItalic
                      .copyWith(fontSize: 12.sp, color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
