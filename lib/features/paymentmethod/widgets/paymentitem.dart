import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

List<PaymentItem> paymentlist = [
  PaymentItem(
    ontap: () {},
    path: 'assets/icons/paypal.svg',
  ),
  PaymentItem(
    ontap: () {},
    path: 'assets/icons/visa.svg',
  ),
  PaymentItem(
    ontap: () {},
    path: 'assets/icons/Payoneer.svg',
  ),
];

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.path, required this.ontap});
  final String path;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: ontap,
            child: Container(
              width: double.infinity,
              height: 73,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Theme.of(context).cardColor,
              ),
              child: Center(
                child: SvgPicture.asset(path),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 17.h,
        ),
      ],
    );
  }
}
