import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/features/mainpage/pages/Buy/view.dart';
import 'package:food_ninja/features/mainpage/pages/chat/view.dart';
import 'package:food_ninja/features/mainpage/pages/home/view.dart';
import 'package:food_ninja/features/mainpage/pages/profile/view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  List<Widget> pageslist = [
    HomeView(),
    const ProfileView(),
    const ByeView(),
    const ChatView(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Theme.of(context).cardColor,
        margin: const EdgeInsets.all(16),
        selectedItemColor: const Color(0xff53E88B),
        unselectedItemColor: const Color(0xff15BE77),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: SvgPicture.asset('assets/icons/Home.svg'),
            title: Text(
              "Home",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset('assets/icons/Profile.svg'),
            title: Text(
              "Profile",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          SalomonBottomBarItem(
            icon: Badge(
                largeSize: Theme.of(context).badgeTheme.largeSize,
                smallSize: Theme.of(context).badgeTheme.smallSize,
                textColor: Theme.of(context).badgeTheme.textColor,
                label: Text(
                  '7',
                  style: Theme.of(context).badgeTheme.textStyle,
                ),
                child: SvgPicture.asset('assets/icons/Buy.svg')),
            title: Text(
              "Chart",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          SalomonBottomBarItem(
            icon: Badge(
                largeSize: Theme.of(context).badgeTheme.largeSize,
                smallSize: Theme.of(context).badgeTheme.smallSize,
                textColor: Theme.of(context).badgeTheme.textColor,
                child: SvgPicture.asset('assets/icons/Chat.svg')),
            title: Text(
              "Chat",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
      body: Container(
        child: pageslist[_currentIndex],
      ),
      //Stack(
      //   children: [
      //     Image.asset('assets/images/background2.png'),
      //     pageslist[_currentIndex],
      //   ],
      // ),
    );
  }
}
