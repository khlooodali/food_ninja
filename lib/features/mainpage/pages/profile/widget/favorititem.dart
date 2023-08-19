import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomFavoriteItem extends StatelessWidget {
  const CustomFavoriteItem(
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Container(
        width: 323.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            title: Text(
              menutitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resturantname,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 8.h,
                ),
                GradientText(
                  '\$$menuprice',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'BentonSans Bold',
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                  colors: const [
                    AppLightColor.lightprimaryColor,
                    AppLightColor.darkprimaryColor
                  ],
                ),
              ],
            ),
            trailing: InkWell(
              onTap: () {},
              child: Container(
                width: 85.w,
                height: 29.h,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    AppLightColor.lightprimaryColor,
                    AppLightColor.darkprimaryColor
                  ]),
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: const Center(
                  child: Text(
                    'Buy Again',
                    style: TextStyle(
                        fontFamily: 'BentonSans Bold',
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
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
        ),
      ),
    );
  }
}
