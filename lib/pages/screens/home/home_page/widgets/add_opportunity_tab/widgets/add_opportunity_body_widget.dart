import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/utilities/custom_dialog_for_sign_up_member_radio_group.dart';
import 'package:syag/pages/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Add Opportunity Body Widget
class AddOpportunityBodyWidget extends HookWidget {
  const AddOpportunityBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Opportunity Title Controller
    var opportunityTitle = useTextEditingController();
    // Opportunity Description Controller
    var opportunityDescription = useTextEditingController();
    // Type Of Opportunity Controller
    var typeOfOpportunity = useTextEditingController();
    // Category Controller Controller
    var categoryController = useTextEditingController();
    // Location Controller Controller
    var locationController = useTextEditingController();
    // City Controller Controller
    var cityController = useTextEditingController();
    // Duration Controller
    var durationController = useTextEditingController();
    // Date Of Start Controller
    var dateOfStartController = useTextEditingController();
    // Capacity Controller
    var capacityController = useTextEditingController();
    // Skills Controller
    var skillsController = useTextEditingController();
    // Interest Controller
    var interestController = useTextEditingController();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          children: [
            // Opportunity Title
            TextField(
              controller: opportunityTitle,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'opportunity_title'.tr),
                  ),
            ),
            // Opportunity Description
            TextField(
              controller: opportunityDescription,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label:
                        LableWithStarWidget(text: 'opportunity_description'.tr),
                  ),
            ),

            // Type Of Opportunity
            TextField(
              controller: typeOfOpportunity,
              readOnly: true,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'type_of_opportunity'.tr),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Category

            TextField(
              controller: categoryController,
              readOnly: true,
              style: inputStyle,
              onTap: () => signUpAsMemberOrAddOpportunityDialog(
                context: context,
                controller: categoryController,
                title: 'choose_category'.tr,
                contentList: [
                  'management'.tr,
                  'biomedical'.tr,
                  'social'.tr,
                ],
              ),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'category'.tr),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: faddenGreenColor),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),

                    // ),
                  ),
            ),
            // Location
            TextField(
              controller: locationController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'location'.tr),
                  ),
            ),
            // City
            TextField(
              controller: cityController,
              style: inputStyle,
              readOnly: true,
              onTap: () => signUpAsMemberOrAddOpportunityDialog(
                context: context,
                controller: cityController,
                title: 'choose_city'.tr,
                contentList: [
                  'jaddah'.tr,
                  'riyadh'.tr,
                ],
              ),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'city'.tr),
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
              controller: durationController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'duration'.tr),
                  ),
            ),
            // Date Of Start
            TextField(
              controller: dateOfStartController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'date_of_start'.tr),
                  ),
            ),
            // Capacity
            TextField(
              controller: capacityController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'capacity'.tr),
                  ),
            ),
            // Skills
            TextField(
              controller: skillsController,
              readOnly: true,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              onTap: () => signUpAsMemberOrAddOpportunityDialog(
                context: context,
                controller: skillsController,
                title: 'choose_skills'.tr,
                contentList: [
                  'skills'.tr + "1",
                  'skills'.tr + "2",
                ],
              ),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'skills'.tr),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Interest
            TextField(
              controller: interestController,
              readOnly: true,
              style: inputStyle,
              onTap: () => signUpAsMemberOrAddOpportunityDialog(
                context: context,
                controller: interestController,
                title: 'choose_interest'.tr,
                contentList: [
                  'interest'.tr + "1",
                  'interest'.tr + "2",
                ],
              ),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'interest'.tr),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: faddenGreenColor,
                    ),
                  ),
            ),
            // Add Button
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("add".tr),
              ),
            ),
            // Bottom Space
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
