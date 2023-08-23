import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/features/loginandsignup/loginview.dart';
import 'package:food_ninja/features/loginandsignup/signupview.dart';

import 'core/global/theme/lightmodetheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FoodNinja',
          theme: getLightTheme(),
          darkTheme: ThemeData.dark(),
          home: child,
        );
      },
      child: const LoginView(),
    );
  }
}
