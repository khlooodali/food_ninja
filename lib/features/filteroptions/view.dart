import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/design/custombutton/view.dart';
import 'package:food_ninja/core/design/customsearch/view.dart';

import '../mainpage/pages/home/widgets/titlenotification.dart';
import 'widget/custombtn.dart';

class FilterOptionsView extends StatelessWidget {
  FilterOptionsView({super.key});
  final TextEditingController _filtterController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const Image(image: AssetImage('assets/images/background2.png')),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 60.h,
                ),
                child: const TitleNotifyHomeView(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: CustomSearchView(
                  isfillter: true,
                  controller: _filtterController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 20.h, right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Resturant',
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Menu',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Location',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomFilterBttn(
                          ontap: () {},
                          text: '1 Km',
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: '>10 Km',
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: '<10 Km',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Food',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Cake',
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Soup',
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Main Course',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Appetizer',
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        CustomFilterBttn(
                          ontap: () {},
                          text: 'Dessert',
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 138.h, left: 25.w, right: 25.w),
                      child: SizedBox(
                          width: double.infinity,
                          child:
                              CusttomButton(ontapped: () {}, text: 'Search')),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
