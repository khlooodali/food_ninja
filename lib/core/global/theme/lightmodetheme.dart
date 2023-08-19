import 'package:flutter/material.dart';
import 'package:food_ninja/core/global/appcolors/appcolorslightmode.dart';

ThemeData getLightTheme() {
  return ThemeData(
    primaryColor: AppLightColor.lightprimaryColor,
    canvasColor: AppLightColor.foodcontainerColor,

    ///filter background Container
    disabledColor: AppLightColor.foodtextColor,

    ///filter textbtn
    badgeTheme: const BadgeThemeData(
        backgroundColor: AppLightColor.badgeColor,
        textColor: Color(0xffffffff),
        smallSize: 7,
        largeSize: 12,
        textStyle: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w400,
            fontFamily: 'BentonSans Bold')),
    //background container search color

    indicatorColor: AppLightColor.backcontainerColor,
    iconTheme: const IconThemeData(color: AppLightColor.searchiconColor),
    //primaryColor: Color(value),
    scaffoldBackgroundColor: Colors.grey[50],
    //////for container
    unselectedWidgetColor: AppLightColor.containerborderColor,
    appBarTheme: const AppBarTheme(
        elevation: 0, backgroundColor: AppLightColor.fillColor),

    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppLightColor.borderColor, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      filled: true,
      fillColor: AppLightColor.fillColor,
      labelStyle: TextStyle(
        fontFamily: 'BentonSans Regular',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppLightColor.inputTextColor,
      ),
      hintStyle: TextStyle(
        fontFamily: 'BentonSans Regular',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppLightColor.inputTextColor,
      ),
    ),
    cardColor: AppLightColor.fillColor,
    textTheme: TextTheme(
      ///logo title
      headlineLarge: const TextStyle(
          fontFamily: 'Viga', fontWeight: FontWeight.w400, fontSize: 40),

      ////logo subtitle
      headlineMedium: const TextStyle(
          color: AppLightColor.titleTextColor,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 13),
      //title onboarding
      titleMedium: const TextStyle(
          color: AppLightColor.titleTextColor,
          fontFamily: 'BentonSans Bold',
          fontSize: 22,
          fontWeight: FontWeight.w400),

      //title login $ sign up
      labelLarge: const TextStyle(
          color: AppLightColor.titleTextColor,
          fontFamily: 'BentonSans Bold',
          fontSize: 20,
          fontWeight: FontWeight.w400),
      ////textbutton
      displayLarge: const TextStyle(
          decoration: TextDecoration.underline,
          fontFamily: 'BentonSans Regular',
          fontWeight: FontWeight.w400,
          fontSize: 12),

      ////message
      bodyLarge: const TextStyle(
          color: AppLightColor.messageColor,
          fontFamily: 'BentonSans Regular',
          fontWeight: FontWeight.w400,
          fontSize: 14),

      ///////subtitle of page,subonboarding,radiotext
      titleSmall: const TextStyle(
          color: AppLightColor.subtitleTextColor,
          fontFamily: 'BentonSans Book',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          overflow: TextOverflow.ellipsis,
          height: 1.7),

      ///////////Title of page
      titleLarge: const TextStyle(
        fontFamily: 'BentonSans Bold',
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: AppLightColor.titleTextColor,
      ),
      /////congrats
      labelMedium: const TextStyle(
        fontFamily: 'BentonSans Bold',
        fontWeight: FontWeight.w400,
        fontSize: 30,
        color: AppLightColor.titleTextColor,
      ),
      ////buttntext
      headlineSmall: const TextStyle(
          color: AppLightColor.fillColor,
          fontSize: 16,
          fontWeight: FontWeight.w400),

      ///contunio with
      displaySmall: const TextStyle(
        color: AppLightColor.titleTextColor,
        fontFamily: 'BentonSans Bold',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),

      labelSmall: const TextStyle(
        color: AppLightColor.subtitleTextColor,
        fontFamily: 'BentonSans Bold',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
////resturant title
      bodyMedium: const TextStyle(
        color: AppLightColor.subtitleTextColor,
        fontFamily: 'BentonSans Bold',
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),

      /////social text
      displayMedium: const TextStyle(
        fontFamily: 'BentonSans Regular',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppLightColor.titleTextColor,
      ),
      /////search text
      bodySmall: TextStyle(
        fontFamily: 'Roboto Regular',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppLightColor.searchtextColor,
      ),
    ),
  );
}
