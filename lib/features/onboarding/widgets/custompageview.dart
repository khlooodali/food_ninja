import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageItem extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  const PageItem(
      {super.key,
      @required this.image,
      @required this.title,
      @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 87.h),
          child: SizedBox(height: 434.h, child: Image.asset(image!)),
        ),
        SizedBox(
          height: 30.h,
        ),
        Center(
          child: Text(
            title!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Center(
          child: Text(
            subtitle!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
