import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../core/design/customtextfiled/view.dart';
import 'social.dart';

class LoginFormView extends StatefulWidget {
  const LoginFormView({super.key});

  @override
  State<LoginFormView> createState() => _LoginFormViewState();
}

class _LoginFormViewState extends State<LoginFormView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              CustomTextFiledView(
                controller: _emailController,
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
                // onchanged: (value) {
                //   _emailController.text = value!;
                //   setState(() {});
                // },
                // onsaved: (value) {
                //   _emailController.text = value!;
                //   setState(() {});
                // },
              ),
              CustomTextFiledView(
                controller: _passController,
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
                // onchanged: (value) {
                //   _passController.text = value!;
                //   setState(() {});
                // },
                // onsaved: (value) {
                //   _passController.text = value!;
                //   setState(() {});
                // },
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text('Or Continue With',
                    style: Theme.of(context).textTheme.displaySmall),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
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
              CusttomButton(
                  ontapped: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  text: 'Login')
            ],
          ),
        ));
  }
}
