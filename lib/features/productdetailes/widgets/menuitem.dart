import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularMenuItemOfProductView extends StatelessWidget {
  const PopularMenuItemOfProductView(
      {super.key,
      required this.name,
      required this.image,
      required this.price});
  final String name;
  final String image;
  final String price;

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
              image,
              width: 96.w,
              height: 73.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              '$price\$',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
