import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:food_ninja/features/loginandsignup/cubit/login_state.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../core/design/customtextfiled/view.dart';
import '../cubit/apiclient.dart';
import 'social.dart';

class LoginFormView extends StatelessWidget {
  LoginFormView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiClientCubit(),
      child: Builder(builder: (context) {
        ApiClientCubit cubit = BlocProvider.of(context);
        return Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  CustomTextFiledView(
                    controller: cubit.emailController,
                    label: 'Email',
                    ispassword: false,
                    type: TextInputType.emailAddress,
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      final emailRegex =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  CustomTextFiledView(
                    controller: cubit.passController,
                    label: 'password',
                    ispassword: true,
                    type: TextInputType.visiblePassword,
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      final passwordRegex =
                          RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                      if (!passwordRegex.hasMatch(value)) {
                        return 'Please enter a valid password (at least 8 characters, including at least one letter and one number)';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text('Or Continue With',
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: SocialContainerView(
                            ontapped: () {},
                            icon: 'assets/icons/facebook.svg',
                            text: 'Facebook',
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          flex: 1,
                          child: SocialContainerView(
                            ontapped: () {},
                            icon: 'assets/icons/googleicon.svg',
                            text: 'Google',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: GradientText(
                      'Forgot Your Password?',
                      style: Theme.of(context).textTheme.displayLarge,
                      colors: const [
                        AppLightColor.lightprimaryColor,
                        AppLightColor.darkprimaryColor,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  BlocBuilder(
                    bloc: cubit,
                    builder: (context, state) => state is LoadingState
                        ? const CircularProgressIndicator(
                            color: AppLightColor.lightprimaryColor,
                          )
                        : CusttomButton(
                            ontapped: () {
                              if (_formKey.currentState!.validate()) {
                                cubit.signIn(context);

                                _formKey.currentState!.reset();
                              }
                            },
                            text: 'Login'),
                  )
                ],
              ),
            ));
      }),
    );
  }
}
