import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/custombutton/view.dart';
import '../../core/design/customcolumn/view.dart';
import 'widgets/custommassage.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                  title: 'Forgot password?',
                  subtitle:
                      'Select which contact details should we use to reset your password'),
              SizedBox(
                height: 20.h,
              ),
              CustomMessageView(
                heigh: 105,
                icon: 'Message',
                title: 'Via sms:',
                subtitle: '....  ... 4235',
                ontap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomMessageView(
                heigh: 100,
                icon: 'Email',
                title: 'Via email:',
                subtitle: '.... @gmail.com',
                ontap: () {},
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 60.h),
                child: Center(
                  child: CusttomButton(
                    ontapped: () {},
                    text: 'Next',
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
