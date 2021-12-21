import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Skills Tab
class SkillsTab extends StatelessWidget {
  const SkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Skills list
    return GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsetsDirectional.only(top: 2.h),
      childAspectRatio: 2,
      crossAxisSpacing: 3.w,
      mainAxisSpacing: 3.w,
      clipBehavior: Clip.none,
      children: List.generate(
        5,
        (index) => Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: whiteColor,
          elevation: 5,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shadowColor: shadowColor.withOpacity(0.5),
          child: Text(
            "Skill${index + 1}",
            textAlign: TextAlign.center,
            style: Get.textTheme.headline3!.copyWith(
              color: faddenGreyColor,
            ),
          ),
        ),
      ),
    );
  }
}
