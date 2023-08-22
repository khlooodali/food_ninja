import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';

import '../../core/design/productormenu..dart';
import '../../core/design/testimonials.dart';

class MenuDetailsView extends StatelessWidget {
  const MenuDetailsView({super.key});

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
              'assets/images/PhotoMenu.png',
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
                      child: Stack(
                        children: [
                          ListView(
                            controller: scrollcontroller,
                            children: [
                              const ProductInfoView(
                                  isproduct: false,
                                  descreption:
                                      'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum \nStrowberry\nCream\nwheat\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.',
                                  orders: '2000',
                                  rate: '4.8',
                                  title: 'Rainbow Sandwich Sugarless'),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 33.w, vertical: 20.h),
                                child: Text(
                                  'Testimonials',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Expanded(
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                      itemCount: 10,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              const TestimonialsItem()),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              bottom: 72,
                              left: 25,
                              right: 25,
                              child: CusttomButton(
                                  ontapped: () {}, text: 'Add To Chart')),
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
