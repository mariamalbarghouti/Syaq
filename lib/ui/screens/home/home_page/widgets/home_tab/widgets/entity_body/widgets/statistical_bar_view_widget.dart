import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Container of statistical
// [Opportunities, Appling Members, Applying Members]
class StatisticalBarViewWidget extends StatelessWidget {
  const StatisticalBarViewWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      // Container Shape
      child: Container(
        height: 15.h,
        width: 40.w,
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
        ),
        margin: EdgeInsets.only(
          top: 6.h,
          right: 2.w,
          left: 2.w,
          bottom: 4.h,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFF3F7F9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            // Opportunities Statistics
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Opportunities Text
                  FittedBox(
                    child: Text(
                      "opportunities".tr,
                      style: Get.textTheme.headline3!.copyWith(
                        color: darkGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Numbers Text
                  Text(
                    "numbers".tr,
                    style: Get.textTheme.headline2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            // Vertical Divider
            Container(
              color: darkGreyColor,
              height: 4.h,
              width: 0.4.w,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
            ),
            // Applying Members Statistics
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Applying Members Text
                  FittedBox(
                    child: Text(
                      "applying_members".tr,
                      style: Get.textTheme.headline3!.copyWith(
                        color: darkGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Mumber Of Applying Members
                  Text(
                    "numbers".tr,
                    style: Get.textTheme.headline2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            // Vertical Divider
            Container(
              color: darkGreyColor,
              height: 4.h,
              width: 0.4.w,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
            ),
            // Appling Members Statistics
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Appling Members Text
                  FittedBox(
                    child: Text(
                      "applying_members".tr,
                      style: Get.textTheme.headline3!.copyWith(
                        color: darkGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Appling Members Numbers
                  Text(
                    "numbers".tr,
                    style: Get.textTheme.headline2!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
