import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

// SplashScreen
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff90B780),
              primaryColor,
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/splash_logo.svg',
            height: 35.w,
            width: 40.w,
          ),
        ),
      ),
    );
  }
}
