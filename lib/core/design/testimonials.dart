import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestimonialsItem extends StatelessWidget {
  const TestimonialsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.w,
      height: 128.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 11.h),
        child: ListTile(
          isThreeLine: true,
          leading: Container(
            clipBehavior: Clip.antiAlias,
            width: 64.w,
            height: 64.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Image.asset('assets/images/Profile.png'),
          ),
          title: Text(
            'Dianne Russell',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('12 April 2021',
                  style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'This Is great, So delicious! You Must Here, With Your family',
                maxLines: 2,
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
          trailing: Container(
            width: 53.w,
            height: 33.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19.r),
              color: const Color(0xff53E88B).withOpacity(.1),
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Color(0xff15BE77),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    '5',
                    style: TextStyle(
                      fontFamily: 'BentonSans Bold',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff15BE77),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
