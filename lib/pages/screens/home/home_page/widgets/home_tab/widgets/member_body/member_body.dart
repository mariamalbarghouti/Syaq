import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/widgets/member_body/widgets/images_slider_widgets.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/widgets/member_body/widgets/opportunities_text_and_see_all_button_widgets.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/widgets/utilities/opportunity_card.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/member_opportienty_details/member_opportienty_details_page.dart';

// Member Body
class MemberBody extends StatelessWidget {
  const MemberBody();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Image Silder
          const ImageSliderWidget(),

          // Row of
          // Latest Opportunities
          // And
          // See All button
          const PoortunitiesTextAndSeeMoreButtonWidget(isLatest: true),
          // List Of Opportunities
          ListOfOpportunities(
            length: 4,
            date: "date".tr,
            location: "location".tr,
            img: "assets/images/meta-logo.png",
            // status: "status",
            opportunityTitle: "opportunity_title".tr,
            isMember: true,
            onTap: () => Get.to(
              () => const MemberOpportientiesDetailsPage(
                isMyOpportunity: false,
              ),
            ),
          ),
          // Row of
          // Newrby Opportunities
          // And
          // See All button
          const PoortunitiesTextAndSeeMoreButtonWidget(isLatest: true),
          // List Of Opportunities
          ListOfOpportunities(
            length: 4,
            date: "date".tr,
            location: "location".tr,
            img: "assets/images/meta-logo.png",
            opportunityTitle: "opportunity_title".tr,
            isMember: true,
            onTap: () => Get.to(
              () => const MemberOpportientiesDetailsPage(
                isMyOpportunity: false,
              ),
            ),
          ),
          // Bottom Space
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
