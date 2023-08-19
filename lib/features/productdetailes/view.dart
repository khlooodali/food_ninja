import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/productinfo.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 442.h,
            child: Image.asset(
              'assets/images/product.png',
              fit: BoxFit.fill,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.62,
            maxChildSize: 0.94,
            minChildSize: 0.60,
            builder: (context, ScrollController scrollcontroller) {
              return Stack(
                //overflow: Overflow.visible,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                      ),
                      child: const Column(
                        children: [
                          ProductInfoView(),
                          // Expanded(
                          //   child: ListView.builder(
                          //     controller: scrollcontroller,
                          //     itemCount: 10,
                          //     itemBuilder: (BuildContext context, int index) {
                          //       return Text('$index');
                          //     },
                          //   ),
                          // ),
                        ],
                      )),
                ],
              );
            },
          ),
        ],
      )),
    );
  }
}
