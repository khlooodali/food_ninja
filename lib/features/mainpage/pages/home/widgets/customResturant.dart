import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomResturantView extends StatelessWidget {
  const CustomResturantView(
      {super.key,
      required this.resturantName,
      required this.resturantImage,
      required this.resturantmint});
  final String resturantName;
  final String resturantImage;
  final String resturantmint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      width: 147.w,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 26.h, top: 16.h),
        child: Column(
          children: [
            //network after
            Image.asset(
              resturantImage,
              width: 96.w,
              height: 73.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              resturantName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              resturantmint,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
