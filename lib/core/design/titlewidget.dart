import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidgetView extends StatelessWidget {
  const TitleWidgetView({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextButton(
              onPressed: ontap,
              child: const Text('View More',
                  style: TextStyle(
                    fontFamily: 'BentonSans Book',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xffFF7C32),
                  )))
        ],
      ),
    );
  }
}
