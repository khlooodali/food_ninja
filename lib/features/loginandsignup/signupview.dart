import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/design/customlogo.dart';

import '../../core/global/appcolors/appcolorslightmode.dart';
import 'widgets/signupform.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 47.h),
            child: Center(
              child: ListView(
                children: [
                  const CustomLogoView(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                      child: Text(
                    'Sign Up For Free ',
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
                  SizedBox(height: 60.h),
                  const SignUpForm(),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: GradientText(
                        'already have an account?',
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'BentonSans Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        colors: const [
                          AppLightColor.lightprimaryColor,
                          AppLightColor.darkprimaryColor,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
