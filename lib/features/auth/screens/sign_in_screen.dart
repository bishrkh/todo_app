import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo_app/cache/local_user.dart';
import 'package:todo_app/core/const/colors.dart';
import 'package:todo_app/core/const/styles.dart';
import 'package:todo_app/core/router/app_router.dart';
import 'package:todo_app/core/validator/text_fields_validator.dart';
import 'package:todo_app/features/auth/cubit/auth_cubit.dart';
import 'package:todo_app/features/auth/cubit/auth_state.dart';
import 'package:todo_app/features/auth/data/models/sign_credentials.dart';
import 'package:todo_app/features/auth/widgets/custom_button.dart';
import 'package:todo_app/features/auth/widgets/custom_text_field.dart';
import 'package:todo_app/generated/l10n.dart';
import 'package:todo_app/shared/functions/loading_dialog.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;
  String? userName;
  String? password;

  @override
  void initState() {
    TextFieldsValidator.context = context;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
        setState(() {});
      });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> logIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await BlocProvider.of<AuthCubit>(context).signIn(
        signCredentials:
            SignCredentials(username: userName!, password: password!));
  }

  GlobalKey<FormState> loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) async {
        if (state is AuthLoginDone) {
          await LocalUser.saveUser(state.data);
          stopDialog(context);
          Fluttertoast.showToast(
            msg: S.of(context).done,
          );
          context.router.pushNamed(AppRouter.tasksScreen);
        }
        if (state is AuthLoginError) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: state.error.message,
          );
        }
        if (state is AuthLoginLoading) {
          loadingDialog(context);
        }
      },
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.secColor,
                      AppColors.mainColor,
                    ],
                  ),
                ),
                child: Opacity(
                  opacity: _opacity.value,
                  child: Transform.scale(
                    scale: _transform.value,
                    child: Container(
                      width: 330.w,
                      height: 450.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.shadowColor,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Form(
                        key: loginkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(),
                            Text(
                              S.of(context).signIn,
                              style: AppStyles.bold.copyWith(fontSize: 22.sp),
                            ),
                            const SizedBox(),
                            CustomTextField(
                              icon: Icons.person_2_outlined,
                              validator: TextFieldsValidator.nameValidator,
                              hintText: S.of(context).userName,
                              isPassword: false,
                              onChange: (String value) {
                                setState(() {
                                  userName = value;
                                });
                              },
                              width: 300.w,
                            ),
                            CustomTextField(
                              icon: Icons.lock_outline,
                              validator: TextFieldsValidator.passwordValidator,
                              hintText: S.of(context).password,
                              isPassword: true,
                              onChange: (String value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              width: 300.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  title: S.of(context).login,
                                  width: 130.w,
                                  height: 50.h,
                                  color: AppColors.black,
                                  radius: 10.r,
                                  onPress: () {
                                    if (loginkey.currentState!.validate()) {
                                      loginkey.currentState!.save();
                                      logIn();
                                    }
                                  },
                                ),
                                10.horizontalSpace,
                                Container(
                                  width: 130.w,
                                  alignment: Alignment.center,
                                  child: Text(
                                    S.of(context).forgetPassword,
                                    style: AppStyles.bold.copyWith(
                                        fontSize: 10.sp,
                                        color: AppColors.black),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(),
                            Text(
                              S.of(context).createAccount,
                              style: AppStyles.bold.copyWith(
                                  fontSize: 12.sp, color: AppColors.black),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
