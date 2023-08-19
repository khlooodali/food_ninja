import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomLogoView extends StatelessWidget {
  const CustomLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 175.w,
            height: 139.h,
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.cover,
            )),

        GradientText(
          'FoodNinja',
          style: Theme.of(context).textTheme.headlineLarge,
          colors: const [
            AppLightColor.lightprimaryColor,
            AppLightColor.darkprimaryColor
          ],
        ),

        Text(
          'Deliever Favorite Food',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // )
      ],
    );
  }
}
