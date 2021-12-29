import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/message_page/message_page.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/member_opportienty_details/widgets/opportunity_details_body.dart';
import 'package:syag/pages/screens/home/opportunity_search_or_my_fav_page/opportunity_or_my_fav_page.dart';
import 'package:syag/utils/colors.dart';

// Member Opportunitites Details
class MemberOpportientiesDetailsPage extends StatelessWidget {
  const MemberOpportientiesDetailsPage({Key? key, required this.isMyOpportunity})
      : super(key: key); 
  final bool isMyOpportunity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // Appbar
      appBar: AppBar(
        title: Text("opportunity_details".tr.toUpperCase()),
        // Back Icon
        leading: IconButton(
          onPressed: () => Get.back(),
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20.sp,
          ),
        ),
        // Favorite Icon
        actions: [
          IconButton(
            onPressed: () => Get.to(
              () => const OpportunitySearchOrMyFavoritePage(
                isFavorite: true,
              ),
            ),
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.favorite_border,
              size: 20.sp,
              color: shadowColor,
            ),
          ),
        ],
      ),
      // Body
      body: MemberOpportientiesDetailsBody(isMyOpportunity: isMyOpportunity),
      // Bottom NavBar
      bottomNavigationBar: Container(
        margin: EdgeInsetsDirectional.only(end: 22.w, start: 22.w, bottom: 5.h),
        child: ElevatedButton(
          onPressed: () {
            if (isMyOpportunity) Get.to(() => const MessagePage());
          },
          child: Text(isMyOpportunity ? 'send_query'.tr : 'apply_now'.tr),
        ),
      ),
    );
  }
}
