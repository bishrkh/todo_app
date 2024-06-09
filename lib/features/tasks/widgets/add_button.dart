// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/features/tasks/data/models/task_model.dart';
import 'package:todo_app/features/tasks/widgets/create_task_widget.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  Function(Task) addTaskLocally;
  AddButton({
    super.key,
    required this.addTaskLocally,
  });

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
                child: CreateTaskWidget(
                  addTaskLocally: addTaskLocally,
                ),
              );
            }),
          );
        },
      ),
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.ligthPurple,
        ),
        child: Icon(
          Icons.add,
          color: AppColors.white,
          size: 24.w,
        ),
      ),
    );
  }
}
