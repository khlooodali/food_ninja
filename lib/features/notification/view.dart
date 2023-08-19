import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/customcolumn/view.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const Image(image: AssetImage('assets/images/background2.png')),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomCoulmnView(
                title: 'Notification',
                subtitle: '',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
                child: Container(
                  width: 347.w,
                  height: 105.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Theme.of(context).cardColor),
                  child: ListTile(
                    title: Text(
                      'Your order has been taken by the driver',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    subtitle: Text(
                      'Recently',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    leading: const Image(
                      image: AssetImage('assets/images/Resturant.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
