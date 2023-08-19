import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/customlocationicon/view.dart';
import '../../../core/global/appcolors/appcolorslightmode.dart';

class GetLocationView extends StatelessWidget {
  const GetLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 167.h,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(22)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CustomLocationIconView(),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    'Your Location',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 33.h,
              ),
              GestureDetector(
                onTap: () {
                  ////get location
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppLightColor.lightgreyContainer),
                  child: Center(
                      child: Text(
                    'Set Location',
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
