import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';

class CustomCoulmnView extends StatelessWidget {
  const CustomCoulmnView(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, top: 38.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppLightColor.backcontainerColor),
            child: Center(
              child: SvgPicture.asset('assets/icons/back.svg'),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child:
                Text(subtitle, style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
      ),
    );
  }
}
