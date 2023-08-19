import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomMessageView extends StatelessWidget {
  const CustomMessageView(
      {super.key,
      required this.heigh,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.ontap});
  final double heigh;
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: heigh.h,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 23.w, top: 27.h, bottom: 26.h),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/$icon.svg',
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
