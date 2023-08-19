import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TitleNotifyHomeView extends StatelessWidget {
  const TitleNotifyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.w, right: 39.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Find Your\nFavorite Food',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15.r)),
            child: Center(
              child: Badge(
                  largeSize: Theme.of(context).badgeTheme.largeSize,
                  smallSize: Theme.of(context).badgeTheme.smallSize,
                  textColor: Theme.of(context).badgeTheme.textColor,
                  child:
                      SvgPicture.asset('assets/icons/Icon Notifiaction.svg')),
            ),
          )
        ],
      ),
    );
  }
}
