import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Custom Dialog For Search Filter
searchFilterDialog({required BuildContext context}) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gategory
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              onTap: () {},

              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'gategory'.tr,
                    hintText: 'select_gategory'.tr,
                    // hintTex,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // City
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              onTap: () {},
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'city'.tr,
                    hintText: 'city'.tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Interest
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              onTap: () {},
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'interest'.tr,
                    hintText: 'select_interest'.tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Duration
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              // onTap: () {},
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'duration'.tr,
                    hintText: 'select_duration'.tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Date Of Start
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              onTap: () {},
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'date_of_start'.tr,
                    hintText: 'date_of_start'.tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Type Of Opportunity
            TextField(
              // controller: languageController,
              readOnly: true,
              style: inputStyle,
              onTap: () {},
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'type_of_opportunity'.tr,
                    hintText: 'select_type_of_opportunity'.tr,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
          ],
        ),
      ),
      // Apply Filter Button
      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 3.h),
          child: Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text("apply_filter".tr),
            ),
          ),
        ),
      ],
    ),
  );
}
