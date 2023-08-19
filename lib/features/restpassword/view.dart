import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/customcolumn/view.dart';

import 'widgets/form.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Image.asset('assets/images/background2.png'),
            Column(
              children: [
                const CustomCoulmnView(
                    title: 'Reset your password here',
                    subtitle:
                        'Select which contact details should we use to reset your password'),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: const RestPasswordFormView(),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
