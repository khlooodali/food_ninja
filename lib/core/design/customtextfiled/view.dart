import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFiledView extends StatelessWidget {
  final String label;
  final String icon;
  final String sicon;
  // final bool iscursor;
  final TextInputType type;
  final bool ispassword;
  final int space;
  final VoidCallback? tappedicon;
  //final Function(String?)? onsaved;
  //final Function(String?)? onchanged;
  final String? Function(String?)? validation;
  final TextEditingController controller;
  const CustomTextFiledView(
      {super.key,
      this.icon = '',
      this.space = 12,
      // this.iscursor = false,
      this.sicon = '',
      required this.label,
      required this.type,
      required this.ispassword,
      this.tappedicon,
      required this.controller,
      //required this.onsaved,
      //required this.onchanged,
      required this.validation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // showCursor: false,
          //onSaved: onsaved,
          // onChanged: onchanged,
          controller: controller,
          validator: validation,
          keyboardType: type,
          obscureText: ispassword,
          decoration: InputDecoration(
              //contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
              prefixIcon: SvgPicture.asset(
                icon,
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
              suffixIcon: IconButton(
                  onPressed: tappedicon, icon: SvgPicture.asset(sicon)),
              hintText: label,
              hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
              fillColor: Theme.of(context).inputDecorationTheme.fillColor,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              // enabledBorder: const UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.transparent),
              // ),
              enabledBorder:
                  Theme.of(context).inputDecorationTheme.enabledBorder),
        ),
        SizedBox(
          height: space.h,
        ),
      ],
    );
  }
}
