import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomCongrtsView extends StatelessWidget {
  const CustomCongrtsView({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 33.h, left: 102.w, right: 101.w),
          child: SvgPicture.asset('assets/icons/congrats.svg'),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.h, left: 115.w, right: 114.w),
          child: GradientText('Congrats!',
              style: Theme.of(context).textTheme.labelMedium,
              colors: const [
                AppLightColor.lightprimaryColor,
                AppLightColor.darkprimaryColor
              ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
