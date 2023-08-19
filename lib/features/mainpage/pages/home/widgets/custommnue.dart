import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenuItemView extends StatelessWidget {
  const CustomMenuItemView(
      {super.key,
      required this.menuimage,
      required this.menutitle,
      required this.resturantname,
      required this.menuprice});
  final String menuimage;
  final String menutitle;
  final String resturantname;
  final int menuprice;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.w,
      height: 87.h,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: ListTile(
        title: Text(
          menutitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          resturantname,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        trailing: Text(
          '\$$menuprice',
          style: const TextStyle(
              color: Color(0xffFEAD1D),
              fontFamily: 'BentonSans Bold',
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ),
        leading: Container(
          width: 64.h,
          height: 64.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                //network
                image: AssetImage(menuimage)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
