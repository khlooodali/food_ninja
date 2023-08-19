import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 44.h, left: 21.w, bottom: 20.h),
          child: Container(
            width: 111.w,
            height: 34.h,
            decoration: BoxDecoration(
                color: const Color(0xffFEAD1D).withOpacity(0.1),
                borderRadius: BorderRadius.circular(19.r)),
            child: const Center(
              child: Text(
                'Member Gold',
                style: TextStyle(
                    color: Color(0xffFEAD1D),
                    fontFamily: 'BentonSans Bold',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 21.w, right: 32.w, bottom: 20.h, top: 20.h),
          child: ListTile(
            title: const Text('Anam Wusono'),
            subtitle: Text(
              'anamwp66@gmail.com',
              style: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
            trailing: SvgPicture.asset(
              'assets/icons/Edit Icon.svg',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            width: 347.w,
            height: 64.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(22.r)),
            child: ListTile(
              title: Text(
                'You Have 3 Voucher',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: SvgPicture.asset(
                'assets/icons/Voucher.svg',
                width: 46.w,
                height: 43.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 20.h),
          child: Text(
            'Favorite',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
