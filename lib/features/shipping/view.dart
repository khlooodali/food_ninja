import 'package:flutter/material.dart';
import 'package:food_ninja/features/confirmorder/widget/itemview.dart';

import '../../core/design/customcolumn/view.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const Image(image: AssetImage('assets/images/background2.png')),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomCoulmnView(
                  title: 'Shipping',
                  subtitle: '',
                ),
                const ConfirmItemView(
                  issetlocation: false,
                  isedit: false,
                  islocation: true,
                  location: '8502 Preston Rd. Inglewood, Maine 98380',
                  title: 'Order Location',
                ),
                ConfirmItemView(
                  isedit: false,
                  islocation: true,
                  location: '4517 Washington Ave. Manchester, Kentucky 39495',
                  title: 'Deliver To',
                  issetlocation: true,
                  ontap: () {},
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
