import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/features/mainpage/pages/home/widgets/customdeal.dart';

import '../../../../core/design/customsearch/view.dart';
import 'widgets/customResturant.dart';
import 'widgets/custommnue.dart';
import 'widgets/titlenotification.dart';
import '../../../../core/design/titlewidget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background2.png'),
        SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: Column(
            children: [
              const TitleNotifyHomeView(),
              SizedBox(
                height: 20.h,
              ),
              CustomSearchView(
                isfillter: false,
                controller: _controller,
                ontap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomDealView(),
              SizedBox(
                height: 25.h,
              ),
              TitleWidgetView(ontap: () {}, title: 'Nearest Restaurant'),
              SizedBox(
                height: 36.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    //physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const CustomResturantView(
                        resturantImage: 'assets/images/Resturant.png',
                        resturantName: 'Vegan Resto',
                        resturantmint: '12',
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return SizedBox(
                        width: 20.w,
                      );
                    }),
                    itemCount: 5),
              ),
              SizedBox(
                height: 24.h,
              ),
              TitleWidgetView(ontap: () {}, title: 'Popular Menu'),
              SizedBox(
                height: 500,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    //physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const CustomMenuItemView(
                        menuimage: 'assets/images/Menu.png',
                        menuprice: 7,
                        resturantname: 'Warung Herbal',
                        menutitle: 'Herbal Pancake',
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return SizedBox(
                        width: 20.w,
                      );
                    }),
                    itemCount: 5),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
