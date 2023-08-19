import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialContainerView extends StatelessWidget {
  const SocialContainerView(
      {super.key,
      required this.icon,
      required this.text,
      required this.ontapped});

  final String icon;
  final String text;
  final VoidCallback ontapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        width: 152,
        height: 57,
        decoration: BoxDecoration(
          // boxShadow: const [
          //   BoxShadow(
          //     //color: Color.fromARGB(255, 243, 240, 240),
          //     spreadRadius: 0,
          //     blurRadius: 50,
          //     offset: Offset(12, 26),
          //   ),
          // ],
          color: Theme.of(context).inputDecorationTheme.fillColor,
          border: Border.all(
            width: 1,
            color: Theme.of(context).unselectedWidgetColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(icon),
              Text(text, style: Theme.of(context).textTheme.displayMedium)
            ],
          ),
        ),
      ),
    );
  }
}
