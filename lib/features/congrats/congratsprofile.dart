import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/custombutton/view.dart';
import 'widgets/customview.dart';

class CongratsProfileView extends StatelessWidget {
  const CongratsProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //width: double.infinity,
          //height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 254.h),
            child: Column(
              children: [
                const CustomCongrtsView(
                  title: 'Your Profile Is Ready To Use',
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 60.h),
                  child: Center(
                    child: CusttomButton(
                      ontapped: () {},
                      text: 'Try Order',
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
