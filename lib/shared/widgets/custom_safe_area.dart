import 'package:flutter/material.dart';
import 'package:todo_app/core/const/colors.dart';

class CustomSafeArea extends StatelessWidget {
  final Widget child;
  const CustomSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
