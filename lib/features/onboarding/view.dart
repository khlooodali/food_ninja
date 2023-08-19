import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/logic/helpermethode/nextpage.dart';
import 'package:food_ninja/features/loginandsignup/loginview.dart';

import '../../core/design/custombutton/view.dart';
import 'widgets/custompageview.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController _controller = PageController();
  int count = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: count)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              PageItem(
                image: 'assets/images/onboarding1.png',
                title: 'Find your  Comfort\n${'         '}Food here',
                subtitle:
                    'Here You Can find a chef or dish for every\n${'                '}taste and color. Enjoy!',
              ),
              PageItem(
                image: 'assets/images/onboarding2.png',
                title: 'Food Ninja is Where Your\n${'     '}Comfort Food Lives',
                subtitle:
                    'Enjoy a fast and smooth food delivery at\n${'                      '}your doorstep',
              ),
            ],
          ),
          Positioned(
              left: 109.w,
              bottom: 50.h,
              child: CusttomButton(
                text: 'Next',
                ontapped: () {
                  if (_controller.page! == 0) {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  } else {
                    nextTo(context, const LoginView(), iskeep: false);
                  }
                },
              ))
        ],
      ),
    );
  }
}
