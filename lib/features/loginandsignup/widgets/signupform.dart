import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';
import 'package:food_ninja/core/design/customtextfiled/view.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:food_ninja/core/logic/helpermethode/nextpage.dart';
import 'package:food_ninja/features/loginandsignup/cubit/apiclient.dart';
import 'package:food_ninja/features/loginandsignup/model.dart';
import 'package:food_ninja/features/loginandsignup/signupprocessview.dart';
//import 'package:food_ninja/features/loginandsignup/model.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool ishide = true;
  bool iselected = false;
  bool ischeck = true;

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFiledView(
                    controller: cubit.usernameController,
                    label: 'Anamwp . . ',
                    // iscursor: true,
                    type: TextInputType.name,
                    ispassword: false,
                    icon: 'assets/icons/Profile.svg',
                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  CustomTextFiledView(
                    controller: cubit.useremailController,
                    label: 'Email',
                    type: TextInputType.emailAddress,
                    ispassword: false,
                    icon: 'assets/icons/emails.svg',
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
                    controller: cubit.userpasswordController,
                    tappedicon: () {
                      ishide = !ishide;
                      setState(() {});
                    },
                    label: 'Password',
                    type: TextInputType.visiblePassword,
                    ispassword: ishide,
                    icon: 'assets/icons/Lock.svg',
                    sicon: ishide
                        ? 'assets/icons/Show.svg'
                        : 'assets/icons/hide.svg',
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
                  Row(
                    children: [
                      RoundCheckBox(
                        borderColor: ischeck
                            ? AppLightColor.lightprimaryColor
                            : AppLightColor.darkprimaryColor,
                        isChecked: true,
                        size: 25.sp,
                        uncheckedColor: AppLightColor.lightprimaryColor,
                        checkedColor: AppLightColor.lightprimaryColor,
                        onTap: (selected) {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Keep Me Signed In',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      RoundCheckBox(
                        borderColor: ischeck
                            ? AppLightColor.lightprimaryColor
                            : AppLightColor.darkprimaryColor,
                        isChecked: true,
                        size: 25.sp,
                        uncheckedColor: AppLightColor.lightprimaryColor,
                        checkedColor: AppLightColor.lightprimaryColor,
                        onTap: (selected) {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Email Me About Special Pricing',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                      child: CusttomButton(
                          ontapped: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              nextTo(
                                  context,
                                  SignUpProcessView(
                                      user: User(
                                          email: cubit.useremailController.text,
                                          name: cubit.usernameController.text,
                                          password: cubit
                                              .userpasswordController.text)));
                            }
                          },
                          text: 'Create Account'))
                ],
              ),
            ));
      }),
    );
  }
}
