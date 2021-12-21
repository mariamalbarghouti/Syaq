import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:syag/ui/screens/auth/sign_in_screen/sign_in.dart';
import 'package:sizer/sizer.dart';
import '../../../../services/sharedPrefs.dart';
import '../../../../utils/colors.dart';

// body of introduction screen
// ignore: must_be_immutable
class BodyOfIntroScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  // intro page decoration
  final PageDecoration pageDecoration = const PageDecoration(
    imageFlex: 4,
    bodyFlex: 2,
    titlePadding: EdgeInsets.all(0),
    descriptionPadding: EdgeInsets.all(0),
    bodyAlignment: Alignment.topCenter,
    imageAlignment: Alignment.topCenter,
  );


  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Get.theme.backgroundColor,
      nextFlex: 1,
      backFlex: 1,
      // decoration for dots container
      dotsContainerDecorator: const BoxDecoration(color: whiteColor),
      // dots container
      dotsDecorator: DotsDecorator(
        size: Size(2.3.w, 2.3.w),
        color: faddenGreyColor,
        activeColor: Get.theme.primaryColor,
        activeSize: Size(10.0.w, 2.3.w),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1.5.w)),
        ),
      ),
      pages: [
        // Intro 1
        PageViewModel(
          // shared decoration
          decoration: pageDecoration,
          // image 1
          image: SvgPicture.asset(
            'assets/images/intro_1.svg',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          // title 1
          titleWidget: Text(
            'intro_title_1'.tr,
            style: Get.textTheme.headline1!,
          ),
          // body 1
          bodyWidget: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 90.w,minWidth: 90.w),
            child: Text(
              'intro_text_body_screen_1'.tr,
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.fade,
              
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 13.sp),
            ),
          ),
        ),

        // Intro 2
        PageViewModel(
          // shared decoration
          decoration: pageDecoration,
          // image 2
          image: SvgPicture.asset(
            'assets/images/intro_2.svg',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          // title 2
          titleWidget: Text(
            'intro_title_2'.tr,
            style: Get.textTheme.headline1!,
          ),
          // body 2
           bodyWidget: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 90.w,minWidth: 90.w),
            child: Text(
              'intro_text_body_screen_2'.tr,
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.fade,
              
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 13.sp),
            ),
          ),
        
        ),
        // Intro 3
        PageViewModel(
          // shared decoration
          decoration: pageDecoration,
          // image 3
          image: SvgPicture.asset(
            'assets/images/intro_3.svg',
             fit: BoxFit.fill,
            width: double.infinity,
          ),
          // title 3
          titleWidget: Text(
            'intro_title_3'.tr,
            style: Get.textTheme.headline1!,
          ),
          // body 3
          bodyWidget: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 90.w,minWidth: 90.w),
            child: Text(
              'intro_text_body_screen_3'.tr,
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.fade,
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 13.sp),
            ),
          ),  ),
      ],
      // next icon
      next: Icon(
        Icons.arrow_forward_ios,
        color: blackColor,
        size: 25.sp,
      ),
      // back icon
      back: Icon(
        Icons.arrow_back_ios,
        color: blackColor,
        size: 25.sp,

      ),
      done: Icon(
        Icons.arrow_forward_ios,
        color: Get.iconColor,
        size: 25.sp,
      ),
      // on all the intro done
      // save seen
      onDone: () => _onIntroEnd(),
    );
  }

  // for making splash
  // screen not shown
  // again if the user
  // do open the application
  // before
  void _onIntroEnd() {
    SharedPrefs.getInstance()!.saveData('oldUser', 'true');
    // go to HomePage or LoginScreen
    Get.off(() =>  const SignInPage());
  }
}
