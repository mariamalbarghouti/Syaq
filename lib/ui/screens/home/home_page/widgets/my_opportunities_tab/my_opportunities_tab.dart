import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/member_opportienty_details/member_opportienty_details.dart';
import 'package:syag/utils/colors.dart';

// My Opportunity
// "ONLY FOR MEMBER"
class MyOpportunityTab extends StatelessWidget {
  const MyOpportunityTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'my_opportunities'.tr.toUpperCase(),
        ),
      ),
      // Body
      body: ListView.builder(
        itemCount: 20,
        physics: const BouncingScrollPhysics(),
        // padding: EdgeInsets,
        padding: EdgeInsets.all(6.w),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(
              () => const MemberOpportientiesDetailsPage(
                isMyOpportunity: true,
              ),
            ),
            child: Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(bottom: 2.h),
              child: Material(
                shape: RoundedRectangleBorder(
                  // side: ,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: whiteColor,
                elevation: 5,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shadowColor: shadowColor.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // spacing: 5.0,
                    // runSpacing: 5.0,
// clipBehavior: ,

                    // verticalDirection: VerticalDirection.down,
                    // direction: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                foregroundColor: blackColor,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/meta-logo.png',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 4.w),
                                child: Text(
                                  "company_name".tr,
                                  textAlign: TextAlign.end,
                                  // textAlign: TextAlign.end,
                                  style: Get.textTheme.headline3!
                                      .copyWith(color: faddenGreyColor),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              "status".tr,
                              style: Get.textTheme.headline3!
                                  .copyWith(color: faddenGreyColor),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        // heightFactor: 0.3.h,
                        child: Text(
                          "opportunity_title".tr,
                          style: Get.textTheme.headline4,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: faddenGreyColor,
                                size: 15.sp,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 2.w),
                                child: Text(
                                  "location".tr,
                                  style: Get.textTheme.headline3!.copyWith(
                                    color: faddenGreyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: faddenGreyColor,
                                size: 13.sp,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 2.w),
                                child: Text(
                                  "date".tr,
                                  style: Get.textTheme.headline3!.copyWith(
                                    color: faddenGreyColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
