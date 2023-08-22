import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/customlogo.dart';

import 'widgets/loginform.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    'Login To Your Account',
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
                  SizedBox(height: 60.h),
                  LoginFormView(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
