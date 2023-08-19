import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/titlewidget.dart';

class ProductInfoView extends StatelessWidget {
  const ProductInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 44.h),
          child: Row(
            children: [
              Container(
                width: 76.w,
                height: 34.h,
                decoration: BoxDecoration(
                    color: const Color(0xff53E88B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(19.r)),
                child: const Center(
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        color: Color(0xff53E88B),
                        fontFamily: 'BentonSans Bold',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 34.w,
                height: 34.h,
                decoration: BoxDecoration(
                    color: const Color(0xff53E88B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(19.r)),
                child: SvgPicture.asset(
                  'assets/icons/locatong.svg',
                  width: 17.w,
                  height: 20.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                width: 34.w,
                height: 34.h,
                decoration: BoxDecoration(
                    color: const Color(0xffFF1D1D).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(19.r)),
                child: const SizedBox(
                  width: 16,
                  height: 16,
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffFF1D1D),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 33.w, top: 20.h),
          child: Text(
            'Wijie Bar and Resto',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 40),
          child: Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/Icon mapg.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '19 Km',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/starg.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '4,8 Rating',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 15.h),
          child: Text(
            'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole ',
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 4,
          ),
        ),
        TitleWidgetView(
          ontap: () {},
          title: 'Popular Menu',
        ),
      ],
    );
  }
}
