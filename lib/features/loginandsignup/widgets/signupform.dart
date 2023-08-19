import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';
import 'package:food_ninja/core/design/customtextfiled/view.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool ishide = true;
  bool iselected = false;
  bool ischeck = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFiledView(
                controller: _nameController,
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
                // onchanged: (value) {
                //   setState(() {
                //     _nameController.text = value!;
                //   });
                // },
                // onsaved: (value) {
                //   setState(() {
                //     _nameController.text = value!;
                //   });
                // },
              ),
              CustomTextFiledView(
                controller: _emailController,
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
                controller: _passwordController,
                tappedicon: () {
                  ishide = !ishide;
                  setState(() {});
                },
                label: 'Password',
                type: TextInputType.visiblePassword,
                ispassword: ishide,
                icon: 'assets/icons/Lock.svg',
                sicon:
                    ishide ? 'assets/icons/Show.svg' : 'assets/icons/hide.svg',
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
                //   _passwordController.text = value!;
                //   setState(() {});
                // },
                // onsaved: (value) {
                //   _passwordController.text = value!;
                //   setState(() {});
                // },
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
                        }
                      },
                      text: 'Create Account'))
            ],
          ),
        ));
  }
}
