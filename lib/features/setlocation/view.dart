import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';

import '../../core/design/customcolumn/view.dart';
import 'widgets/getlocation.dart';

class SetLocationView extends StatelessWidget {
  const SetLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Image.asset('assets/images/background2.png'),
          Column(
            children: [
              const CustomCoulmnView(
                  title: 'Set Your Location',
                  subtitle:
                      'This data will be displayed in your account profile for security'),
              const GetLocationView(),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 60.h),
                child:
                    Center(child: CusttomButton(ontapped: () {}, text: 'Next')),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
