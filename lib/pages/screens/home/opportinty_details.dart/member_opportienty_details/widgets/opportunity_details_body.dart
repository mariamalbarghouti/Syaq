import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/member_opportienty_details/widgets/opportunity_details_widget/opportunity_details_widget.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/opportunity_tab_bar_widget.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/apportunities_details_tab_enum.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/description_benefits_or_info_tab.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/skills_tab.dart';

// Member Opportunities Details Body
class MemberOpportientiesDetailsBody extends StatelessWidget {
  const MemberOpportientiesDetailsBody({
    Key? key,
    required this.isMyOpportunity,
  }) : super(key: key);
  //
  final bool isMyOpportunity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.w),
      child: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          physics:const BouncingScrollPhysics(),
          slivers: [
            // Opportunities Details Info Widget
            MemberOpportunityDetailsInfoWidget(
              isMyOpportunity: isMyOpportunity,
            ),
            // Opportunity TabBar Widget
            OpportunityTabBarWidget(
              tabs: [
                // Description Tab
                Tab(
                  child: Text(
                    "description".tr,
                    style: Get.textTheme.bodyText1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                // Benefits Tab
                Tab(
                  child: Text(
                    "benefits".tr,
                    style: Get.textTheme.bodyText1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                // Skills Tab
                Tab(
                  child: Text(
                    "skills".tr,
                    style: Get.textTheme.bodyText1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            // TabBar Content
            const SliverFillRemaining(
              child: TabBarView(
                children: [
                  // Description Tab
                  DescriptionBenefitsOrInfoTab(
                    tabIs: OpportunitiesDetailsTabType.description,
                  ),
                  // Benefits Tab
                  DescriptionBenefitsOrInfoTab(
                    tabIs: OpportunitiesDetailsTabType.benefits,
                  ),
                  // Skills Tab
                  SkillsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
