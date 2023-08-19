import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton({super.key, required this.ontapped, required this.text});
  final VoidCallback ontapped;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        width: 157.w,
        height: 57.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  AppLightColor.lightprimaryColor,
                  AppLightColor.darkprimaryColor,
                ])),
        child: Center(
          child: Text(
            text!,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
