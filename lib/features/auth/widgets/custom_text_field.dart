import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final Function(String) onChange;
  final double width;
  final String? Function(String?)? validator;
  const CustomTextField(
      {super.key,
      required this.icon,
      required this.hintText,
      required this.isPassword,
      required this.onChange,
      required this.width,
      required this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70.h,
      width: widget.width,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: 10.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        validator: widget.validator,
        onChanged: widget.onChange,
        style: AppStyles.medium.copyWith(fontSize: 13.sp),
        cursorColor: AppColors.black,
        obscureText: widget.isPassword ? obs : false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: AppColors.black,
            size: 20.w,
          ),
          suffixIcon: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(
                      () {
                        obs = !obs;
                      },
                    );
                  },
                  child: Icon(
                    obs ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.black,
                    size: 20.w,
                  ),
                )
              : null,
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: widget.hintText,
          hintStyle: AppStyles.regular.copyWith(
            fontSize: 13.sp,
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
