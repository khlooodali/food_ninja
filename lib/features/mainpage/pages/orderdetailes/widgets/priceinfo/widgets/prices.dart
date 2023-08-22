import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<PricesView> pricelist = [
  const PricesView(
    title: 'Sub-Total',
    price: '120',
  ),
  const PricesView(
    title: 'Delivery Charge',
    price: '10',
  ),
  const PricesView(
    title: 'Discount',
    price: '20',
  ),
  const PricesView(
    title: 'Total',
    price: '150',
  )
];

class PricesView extends StatelessWidget {
  const PricesView({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.w, left: 29.w, top: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'BentonSans Bold',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '\$$price',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'BentonSans Bold',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
