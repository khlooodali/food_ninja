import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilterBttn extends StatelessWidget {
  const CustomFilterBttn({super.key, required this.text, required this.ontap});
  final String text;

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 44.h,
          width: 90,
          decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(15.r)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontFamily: 'BentonSans Bold',
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ))),
    );
  }
}
