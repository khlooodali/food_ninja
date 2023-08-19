import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../core/design/custombutton/view.dart';
import '../../core/design/customcolumn/view.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  OtpFieldController otpController = OtpFieldController();
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
                  title: 'Enter 4-digit Verification code',
                  subtitle:
                      'Code send to +6282045**** . This code will\n expired in 01:30'),
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  width: 347,
                  height: 103,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Theme.of(context).inputDecorationTheme.fillColor),
                  //child: const PincodeView(),
                  child: OTPTextField(
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    //fieldWidth: 60,
                    style: const TextStyle(
                        fontSize: 33, fontWeight: FontWeight.w400),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onChanged: (value) {
                      print(value);
                    },
                    onCompleted: (pin) {
                      print("Completed: $pin");
                    },
                  ),
                ),
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
