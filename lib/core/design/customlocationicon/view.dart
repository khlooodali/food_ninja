import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../global/appcolors/appcolorslightmode.dart';

class CustomLocationIconView extends StatelessWidget {
  const CustomLocationIconView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 33,
      decoration: const BoxDecoration(
          color: AppLightColor.locationcontainerColor, shape: BoxShape.circle),
      child: SvgPicture.asset(
        'assets/icons/vector.svg',
        width: 10,
        height: 10,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
