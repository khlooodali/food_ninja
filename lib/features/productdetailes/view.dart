import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/titlewidget.dart';
import 'widgets/menuitem.dart';

import '../../core/design/productormenu..dart';
import '../../core/design/testimonials.dart';

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
                      child: ListView(
                        controller: scrollcontroller,
                        children: [
                          const ProductInfoView(
                              isproduct: true,
                              descreption:
                                  'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole',
                              location: '19',
                              rate: '4.8',
                              title: 'Wijie Bar and Resto'),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: TitleWidgetView(
                              ontap: () {},
                              title: 'Popular Menu',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  //physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return const PopularMenuItemOfProductView(
                                      image: 'assets/images/piza.png',
                                      name: 'Spacy fresh crab',
                                      price: '12',
                                    );
                                  },
                                  separatorBuilder: ((context, index) {
                                    return SizedBox(
                                      width: 20.w,
                                    );
                                  }),
                                  itemCount: 5),
                            ),
                          ),
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
                                  physics: const NeverScrollableScrollPhysics(),
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
