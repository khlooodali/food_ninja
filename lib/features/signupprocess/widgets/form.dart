import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/custombutton/view.dart';
import '../../../core/design/customtextfiled/view.dart';

class SignProcessFormView extends StatefulWidget {
  const SignProcessFormView({super.key});

  @override
  State<SignProcessFormView> createState() => _SignProcessFormViewState();
}

class _SignProcessFormViewState extends State<SignProcessFormView> {
  final TextEditingController _firstName = TextEditingController();

  final TextEditingController _lastName = TextEditingController();

  final TextEditingController _phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFiledView(
              controller: _firstName,
              label: 'First Name',
              space: 20,
              type: TextInputType.name,
              ispassword: false,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your First Name';
                }
                return null;
              },
              // onchanged: (value) {
              //   setState(() {
              //     _firstName.text = value!;
              //   });
              // },
              // onsaved: (value) {
              //   setState(() {
              //     _firstName.text = value!;
              //   });
              // },
            ),
            CustomTextFiledView(
              controller: _lastName,
              label: 'Last Name',
              space: 20,
              type: TextInputType.name,
              ispassword: false,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Last Name';
                }
                return null;
              },
              // onchanged: (value) {
              //   setState(() {
              //     _lastName.text = value!;
              //   });
              // },
              // onsaved: (value) {
              //   setState(() {
              //     _lastName.text = value!;
              //   });
              // },
            ),
            CustomTextFiledView(
              controller: _phone,
              label: 'Mobile Number',
              space: 200,
              type: TextInputType.phone,
              ispassword: false,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Mobile Number';
                }
                return null;
              },
              // onchanged: (value) {
              //   setState(() {
              //     _phone.text = value!;
              //   });
              // },
              // onsaved: (value) {
              //   setState(() {
              //     _phone.text = value!;
              //   });
              // },
            ),
            Center(
                child: CusttomButton(
                    ontapped: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    text: 'Next'))
          ],
        ),
      ),
    );
  }
}
