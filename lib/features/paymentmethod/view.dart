import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';

import '../../core/design/customcolumn/view.dart';
import 'widgets/paymentitem.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            'assets/images/background2.png',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomCoulmnView(
                  title: 'Payment Method',
                  subtitle:
                      'This data will be displayed in your account profile for security'),
              SizedBox(
                height: 22.h,
              ),
              ...List.generate(
                  paymentlist.length, (index) => paymentlist[index]),
              SizedBox(
                height: 219.h,
              ),
              Center(
                child: CusttomButton(ontapped: () {}, text: 'Next'),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
