import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OptionItem extends StatelessWidget {
  const OptionItem(
      {super.key,
      required this.iconpath,
      required this.option,
      required this.ontap});
  final String iconpath;
  final String option;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 325.w,
          height: 129.h,
          decoration: BoxDecoration(
            color: Theme.of(context).inputDecorationTheme.fillColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 23.h),
            child: Column(
              children: [
                SvgPicture.asset(iconpath),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  option,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
