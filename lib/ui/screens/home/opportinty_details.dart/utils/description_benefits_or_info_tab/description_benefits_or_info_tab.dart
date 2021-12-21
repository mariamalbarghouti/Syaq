import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/apportunities_details_tab_enum.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/utils/skills_tab.dart';
import 'package:syag/utils/colors.dart';

// Description, Benefits Or Info Tab
class DescriptionBenefitsOrInfoTab extends StatelessWidget {
  const DescriptionBenefitsOrInfoTab({
    Key? key,
    required this.tabIs,
  }) : super(key: key);
  // type of tab
  final OpportunitiesDetailsTabType tabIs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.all(4.w),
            padding: EdgeInsets.only(top:5.w,right:5.w,left:5.w,),
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
              "dammy_description".tr,
              textAlign: TextAlign.justify,
              style: Get.textTheme.bodyText1,
            ),
          ),
        ),
        (tabIs == OpportunitiesDetailsTabType.info)
            ? const Expanded(flex: 1, child: SkillsTab())
            : const SizedBox.shrink(),
      ],
    );
  }
}
