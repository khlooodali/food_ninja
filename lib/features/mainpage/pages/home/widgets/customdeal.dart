import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../core/global/appcolors/appcolorslightmode.dart';

class CustomDealView extends StatelessWidget {
  const CustomDealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 150.h,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color(0xff53E88B),
            Color(0xff15BE77),
          ]),
          image: const DecorationImage(
              image: AssetImage('assets/images/dealimage.png')),
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Image.asset('assets/images/ice.png'),
          Padding(
            padding: EdgeInsets.only(
                right: 10.w, top: 30.h, bottom: 76.h, left: 173.w),
            child: const Text(
              'Special Deal For October',
              style: TextStyle(
                  //////lesa theme
                  fontFamily: 'BentonSans Bold',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 70.w, top: 88.h, bottom: 30.h, left: 173.w),
            child: SizedBox(
              height: 32.h,
              width: 82.w,
              child: ElevatedButton(
                ////const in theme
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    )),
                child: GradientText(
                  'Buy Now',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'BentonSans Bold'),
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
    );
  }
}
