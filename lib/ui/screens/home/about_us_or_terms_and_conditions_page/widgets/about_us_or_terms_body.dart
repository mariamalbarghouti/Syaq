import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// About Us Or Terms And Conditions Body
class AboutUsOrTermsAndConditionsBody extends StatelessWidget {
  const AboutUsOrTermsAndConditionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      // shape
      child: Container(
        margin: EdgeInsets.all(4.w),
        padding: EdgeInsets.all(5.w),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), 
            ),
          ],
        ),
        // Text
        child: Text(
          "about_us_and_terms_and_conditions_content".tr,
          textAlign: TextAlign.justify,
          style: Get.textTheme.bodyText1,
        ),
      ),
    );
  }
}
