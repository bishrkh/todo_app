import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final double width;
  final double height;
  final Color color;
  final double radius;
  const CustomButton({
    super.key,
    required this.onPress,
    required this.title,
    required this.width,
    required this.height,
    required this.color,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(
          title,
          style:
              AppStyles.bold.copyWith(fontSize: 13.sp, color: AppColors.white),
        ),
      ),
    );
  }
}
