import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/favorititem.dart';
import 'widget/personalinfo.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 320.h,
            child: Image.asset(
              'assets/images/Profile.png',
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
                      child: Column(
                        children: [
                          const PersonalInfo(),
                          Expanded(
                            child: ListView.builder(
                              controller: scrollcontroller,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return const CustomFavoriteItem(
                                  menuimage: 'assets/images/Menu.png',
                                  menuprice: 35,
                                  menutitle: 'Spacy fresh crab',
                                  resturantname: 'Waroenk kita',
                                );
                              },
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
