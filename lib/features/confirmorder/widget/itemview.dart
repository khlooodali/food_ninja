import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/customlocationicon/view.dart';

class ConfirmItemView extends StatelessWidget {
  const ConfirmItemView(
      {super.key,
      required this.title,
      this.location,
      required this.islocation,
      this.phone,
      required this.isedit,
      this.issetlocation,
      this.ontap});
  final String title;
  final bool isedit;
  final String? phone;
  final String? location;
  final bool? issetlocation;
  final bool islocation;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 335.w,
        height: 150.h,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(22.r)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 19.h, bottom: 5.h, left: 12.w, right: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'BentonSans Regular',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff3B3B3B).withOpacity(.3),
                    ),
                  ),
                  isedit
                      ? TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Edit',
                            style: TextStyle(
                              fontFamily: 'BentonSans Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff53E88B),
                            ),
                          ))
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            ListTile(
              leading: islocation
                  ? const CustomLocationIconView()
                  : SvgPicture.asset('assets/icons/paypal.svg'),
              trailing: islocation
                  ? const SizedBox.shrink()
                  : Text(phone!, style: Theme.of(context).textTheme.bodyLarge),
              title: islocation
                  ? Text(location!,
                      style: Theme.of(context).textTheme.labelSmall)
                  : const SizedBox.shrink(),
              subtitle: issetlocation!
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          onPressed: ontap,
                          child: const Text(
                            'set location',
                            style: TextStyle(
                              fontFamily: 'BentonSans Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff53E88B),
                            ),
                          )))
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
