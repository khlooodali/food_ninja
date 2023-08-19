import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../core/global/appcolors/appcolorslightmode.dart';
import 'amount.dart';

class OrderItemView extends StatelessWidget {
  const OrderItemView(
      {super.key,
      required this.resturantName,
      required this.price,
      required this.menuName,
      required this.menuimage});
  final String resturantName;
  final String price;
  final String menuName;
  final String menuimage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
      child: Center(
        child: Slidable(
            key: const ValueKey(0),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: [
                SlidableAction(
                  onPressed: (BuildContext context) {},
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  backgroundColor: const Color(0xffFEAD1D),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                ),
              ],
            ),
            child: Container(
                width: 347.w,
                height: 103.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(22.r)),
                child: ListTile(
                  isThreeLine: true,
                  leading: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 62,
                    height: 62,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(22)),
                    child: Image(
                        image: AssetImage(
                      //network after
                      menuimage,
                    )),
                  ),
                  trailing: const AmountView(),
                  title: Text(menuName,
                      style: Theme.of(context).textTheme.bodyMedium),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(resturantName,
                          style: Theme.of(context).textTheme.bodyLarge),
                      SizedBox(
                        height: 8.h,
                      ),
                      GradientText('\$$price',
                          style: Theme.of(context).textTheme.labelLarge,
                          colors: const [
                            AppLightColor.lightprimaryColor,
                            AppLightColor.darkprimaryColor,
                          ]),
                    ],
                  ),
                ))),
      ),
    );
  }
}
