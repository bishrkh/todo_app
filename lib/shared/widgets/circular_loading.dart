import 'package:flutter/material.dart';
import 'package:todo_app/core/const/colors.dart';

class CircularLoading extends StatelessWidget {
  const CircularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppColors.thiColor,
    );
  }
}
