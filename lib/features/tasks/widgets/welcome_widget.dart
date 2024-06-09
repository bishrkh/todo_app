import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/cache/local_user.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/generated/l10n.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.w,
        left: 20.w,
        top: 35.h,
        bottom: 20.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(LocalUser.image!),
                  ),
                ),
              ),
              4.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).welcome,
                    style: AppStyles.bold
                        .copyWith(fontSize: 35.sp, color: AppColors.white),
                  ),
                  4.verticalSpace,
                  SizedBox(
                    width: 230.w,
                    child: Text(
                      '${LocalUser.firstName} ${LocalUser.lastName}',
                      style: AppStyles.lightItalic
                          .copyWith(fontSize: 18.sp, color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.logout,
            size: 24.w,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
