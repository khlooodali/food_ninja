import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/customcolumn/view.dart';
import 'widgets/form.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Image.asset('assets/images/background2.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomCoulmnView(
                    title: 'Fill in your bio to get started',
                    subtitle:
                        'This data will be displayed in your account profile for security'),
                SizedBox(
                  height: 20.h,
                ),
                const SignProcessFormView(),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
