import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/features/mainpage/pages/orderdetailes/widgets/priceinfo/widgets/prices.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../../core/global/appcolors/appcolorslightmode.dart';

class PricesInfoView extends StatelessWidget {
  const PricesInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Container(
        width: double.infinity,
        height: 206.h,
        decoration: BoxDecoration(
            color: const Color(0xff53E88B),
            image: const DecorationImage(
                image: AssetImage(
              'assets/images/info.png',
            )),
            borderRadius: BorderRadius.circular(22)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...List.generate(pricelist.length, (index) => pricelist[index]),
            Padding(
              padding: EdgeInsets.only(
                  right: 9.w, bottom: 12.h, left: 12.h, top: 30.h),
              child: Container(
                height: 57,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: GradientText(
                    'Place My Order',
                    style: Theme.of(context).textTheme.labelSmall,
                    colors: const [
                      AppLightColor.lightprimaryColor,
                      AppLightColor.darkprimaryColor
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
