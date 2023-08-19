import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/features/orderdetailes/widgets/orderitem.dart';
import 'package:food_ninja/features/orderdetailes/widgets/priceinfo/view.dart';

import '../../core/design/customcolumn/view.dart';

class OrderDetailesView extends StatelessWidget {
  const OrderDetailesView({super.key});

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
                  title: 'Order details',
                  subtitle: '',
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const OrderItemView(
                            resturantName: 'Waroenk kita',
                            price: '35',
                            menuName: 'Spacy fresh crab',
                            menuimage: 'assets/images/Menu.png');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 18.h, top: 84.h, left: 15.w, right: 15.w),
                  child: const PricesInfoView(),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
