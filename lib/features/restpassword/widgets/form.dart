import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/custombutton/view.dart';
import '../../../core/design/customtextfiled/view.dart';

class RestPasswordFormView extends StatefulWidget {
  const RestPasswordFormView({super.key});

  @override
  State<RestPasswordFormView> createState() => _RestPasswordFormViewState();
}

class _RestPasswordFormViewState extends State<RestPasswordFormView> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFiledView(
              controller: _password,
              tappedicon: () {
                ishide = !ishide;
                setState(() {});
              },
              label: 'Password',
              space: 20,
              type: TextInputType.visiblePassword,
              ispassword: ishide,
              sicon: ishide
                  ? 'assets/images/Vectorg.svg'
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
              // onchanged: (value) {
              //   _password.text = value!;
              //   setState(() {});
              // },
              // onsaved: (value) {
              //   _password.text = value!;
              //   setState(() {});
              // },
            ),
            CustomTextFiledView(
              controller: _confirmpassword,
              label: 'Confirm Password',
              type: TextInputType.visiblePassword,
              ispassword: true,
              sicon: 'assets/icons/Show.svg',
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Please Confirm your password';
                }

                return null;
              },
              // onchanged: (value) {
              //   _confirmpassword.text = value!;
              //   setState(() {});
              // },
              // onsaved: (value) {
              //   _confirmpassword.text = value!;
              //   setState(() {});
              // },
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h, top: 290.h),
              child: Center(
                child: CusttomButton(
                  ontapped: () {
                    if (_formKey.currentState!.validate() &&
                        _password.text == _confirmpassword.text) {
                      _formKey.currentState!.save();
                    }
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('No Match password'),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  text: 'Next',
                ),
              ),
            ),
          ],
        ));
  }
}
