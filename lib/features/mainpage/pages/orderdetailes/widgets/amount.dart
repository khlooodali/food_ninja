import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/global/appcolors/appcolorslightmode.dart';

class AmountView extends StatefulWidget {
  const AmountView({
    super.key,
  });

  @override
  State<AmountView> createState() => _AmountViewState();
}

class _AmountViewState extends State<AmountView> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.w,
      height: 26.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              amount--;
              setState(() {});
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(colors: [
                    AppLightColor.lightprimaryColor,
                    AppLightColor.darkprimaryColor,
                  ])),
              height: 26,
              width: 25,
              child: const Center(
                  child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              )),
            ),
          ),
          Text(
            '$amount',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              amount++;
              setState(() {});
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(colors: [
                    AppLightColor.lightprimaryColor,
                    AppLightColor.darkprimaryColor,
                  ])),
              height: 26,
              width: 25,
              child: const Center(
                  child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
