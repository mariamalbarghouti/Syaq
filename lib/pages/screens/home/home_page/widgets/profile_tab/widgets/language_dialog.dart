import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

languageDialog({
  required BuildContext context,
}) {
  int toggleValue = 0;
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        // actions: [],
        // insetPadding: EdgeInsets.symmetric(horizontal: 3.w),
        contentPadding: EdgeInsetsDirectional.only(top: 2.h, end: 2.w),
        actionsAlignment: MainAxisAlignment.center,

        // buttonPadding:EdgeInsets.zero,

        content: StatefulBuilder(builder: (context, StateSetter setState) {
          return Column(
            // crossAxisAlignment: CrossAxis,
            mainAxisSize: MainAxisSize.min,
            
            // crossAxisSize:
            children: [
              RadioListTile<int>(
                value: 0,
                groupValue: toggleValue,
                dense: true,
                activeColor: primaryColor,
                selectedTileColor: primaryColor,
                contentPadding: EdgeInsets.zero,
                autofocus: true,
                onChanged: (val) => setState(() => toggleValue = val!),
                title: Text(
                  'arabic_language'.tr,
                  textAlign: TextAlign.start,
                  style: Get.textTheme.headline1!.copyWith(
                    fontSize: 15.sp,
                    color: (toggleValue == 0) ? primaryColor : blackColor,
                  ),
                ),
                secondary: SvgPicture.asset(
                  "assets/icons/saudi_arabia.svg",
                  height: 6.w,
                  width: 6.w,
                ),
              ),
              RadioListTile<int>(
                value: 1,
                groupValue: toggleValue,
                dense: true,
                activeColor: primaryColor,
                contentPadding: EdgeInsets.zero,
                autofocus: true,
                onChanged: (val) => setState(() => toggleValue = val!),
                title: Text(
                  'english_language'.tr,
                  textAlign: TextAlign.start,
                  style: Get.textTheme.headline1!.copyWith(
                    fontSize: 15.sp,
                    color: (toggleValue == 1) ? primaryColor : blackColor,
                  ),
                ),
                secondary: SvgPicture.asset(
                  "assets/icons/england.svg",
                  height: 5.4.w,
                  width: 5.4.w,
                ),
              ),
            ],
          );
        }),
        actions: [
          Container(
            width: 45.w,
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('submit'.tr),
            ),
          ),
        ],
      );
    },
  );
}
