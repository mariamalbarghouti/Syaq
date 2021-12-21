import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        // Primary Color
        primaryColor: primaryColor,
        // Scaffold Color
        scaffoldBackgroundColor: whiteColor,
        // Highlite Color
        highlightColor: faddenGreenColor,
       
                // primarySwatch: Colors.blue,
        // Background Color
        backgroundColor: Colors.white,
        shadowColor: shadowColor.withOpacity(0.5),
        errorColor: Color(0xFFBD1E1E),
        indicatorColor: Color(0xFF333333),
        // focusColor: primaryColor,
         
    // canvasColor: Colors.transparent,
  
        // App Bar Theme
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          shadowColor: shadowColor.withOpacity(0.5),
          elevation: 5,
          iconTheme: const IconThemeData(color: blackColor),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            color: blackColor,
            fontSize: 14.sp,
          ),
        ),
        // Icon
        iconTheme: const IconThemeData(
          color: blackColor,
          // size: 25.sp,
        ),
        // Font Family
        fontFamily: 'Cairo',
        // Text Theme
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
          headline2: TextStyle(
            color: blackColor,
            fontFamily: "Cairo",
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            color: blackColor,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
          ),
          headline4:TextStyle(
            color: blackColor,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w800,
            fontSize: 13.sp,
          ),
          bodyText1: TextStyle(
            fontSize: 12.sp,
            color: faddenGreyColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        // Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              color: whiteColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
            ),
            onPrimary: whiteColor,
            primary: primaryColor,
            fixedSize: Size(55.w, 15.w),
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 2.w,
            ),
            shape: const StadiumBorder(),
          ),
        ),
        // Input Decoration
        inputDecorationTheme: InputDecorationTheme(
          focusColor: primaryColor,
          labelStyle: Get.textTheme.headline2,
          hintStyle: Get.textTheme.headline2!.copyWith(color: faddenGreyColor),
          prefixStyle:const TextStyle(color: Colors.red),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: faddenGreyColor), //0xffF3F7F9
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
          ),
        ),
        // Text Selection
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: primaryColor,
          selectionHandleColor: primaryColor,
          selectionColor: faddenGreenColor,
        ),
        //  bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // backgroundColor: Colors.grey[900],
        // elevation: 10,
        // selectedLabelStyle: TextStyle(
        //     color: Color(0xFFA67926), fontFamily: 'Montserrat', fontSize: 14.0),
        // unselectedLabelStyle: TextStyle(
        //     color: Colors.grey[600], fontFamily: 'Montserrat', fontSize: 12.0),
        // selectedItemColor: Color(0xFFA67926),
        // unselectedItemColor: Colors.grey[600],
        // showUnselectedLabels: true,
        // selectedIconTheme: IconThemeData(color: primaryColor),
      
      // ),

        // scrollbarTheme: ScrollbarThemeData(),
        // bottomAppBarTheme:BottomAppBarTheme(color: Colors.amber,) 
      );
}
