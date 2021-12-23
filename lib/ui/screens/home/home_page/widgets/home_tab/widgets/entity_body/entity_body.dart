import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/home_page/widgets/home_tab/widgets/entity_body/widgets/statistical_bar_view_widget.dart';
import 'package:syag/ui/screens/home/home_page/widgets/home_tab/widgets/utilities/opportunity_card.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/entity_opportienty_details/entity_opportienty_details_page.dart';

// Entity Home Body
class EntityBody extends StatelessWidget {
  const EntityBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          // Container of statistical
          // [Opportunities, Appling Members, Applying Members]
          const StatisticalBarViewWidget(),
          // List of Opportunity Card
          ListOfOpportunities(
            onTap: () => Get.to(
              () => const EntityOpportientiesDetailsPage(),
            ),
            length: 15,
            isMember: false,
            opportunityTitle: "opportunity_title".tr,
            date: "date".tr,
            location: "location".tr,
            status: "status".tr,
          ),
          // Bottom Space to make the last
          // Card visible enough
          SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        ],
      ),
    );
  }
}
