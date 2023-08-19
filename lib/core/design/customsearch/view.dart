import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    super.key,
    this.ontap,
    required this.controller,
    required this.isfillter,
  });
  // final bool isfilter;
  final VoidCallback? ontap;
  final TextEditingController controller;
  final bool isfillter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Container(
              height: 50.h,
              width: 267.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'What do you want to order?',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  prefixIcon: SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(
                      'assets/icons/Icon Search.svg',
                      fit: BoxFit.scaleDown,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).indicatorColor,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              )),
          const SizedBox(
            width: 9,
          ),
          isfillter
              ? const SizedBox.shrink()
              : InkWell(
                  onTap: ontap,
                  child: Container(
                    height: 50.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).indicatorColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/Filter.svg',
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
