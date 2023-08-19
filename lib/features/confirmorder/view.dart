import 'package:flutter/material.dart';
import 'package:food_ninja/features/confirmorder/widget/itemview.dart';

import '../../core/design/customcolumn/view.dart';

class ConfirmOrderView extends StatelessWidget {
  const ConfirmOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Image(image: AssetImage('assets/images/background2.png')),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomCoulmnView(
                  title: 'Confirm Order',
                  subtitle: '',
                ),
                ConfirmItemView(
                  issetlocation: false,
                  isedit: true,
                  islocation: true,
                  location: '4517 Washington Ave. Manchester, Kentucky 39495',
                  title: 'Deliver To',
                ),
                ConfirmItemView(
                    issetlocation: false,
                    isedit: true,
                    islocation: false,
                    phone: '2121 6352 8465 ****',
                    title: 'Payment Method'),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
