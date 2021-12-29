import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/row_of_icon_and_text_widget.dart';
import 'package:syag/utils/colors.dart';

// Member Opportunity Details Info Widget
// contains
// [Logo, Company Name, Location, Capacity, Date, Status]
class MemberOpportunityDetailsInfoWidget extends StatelessWidget {
  const MemberOpportunityDetailsInfoWidget({
    Key? key,
    required this.isMyOpportunity,
  }) : super(key: key);
  final bool isMyOpportunity;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // Logo And Company Name
          Row(
            children: [
              // Logo
              CircleAvatar(
                foregroundColor: blackColor,
                maxRadius: 25.sp,
                minRadius: 25.sp,
                child: ClipOval(
                  child: Image.asset('assets/images/meta-logo.png'),
                ),
              ),
              // Company Name
              Padding(
                padding: EdgeInsetsDirectional.only(start: 4.w),
                child: Text(
                  "company_name".tr,
                  // textAlign: TextAlign.end,
                  style: Get.textTheme.headline3!
                      .copyWith(color: faddenGreyColor, fontSize: 15.sp),
                ),
              ),
            ],
          ),
          // Opportunity Title
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Text(
                "opportunity_title".tr,
                style: Get.textTheme.headline4,
              ),
            ),
          ),
          //  Location && Calender
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Location
              RowOfIconAndTextWidget(
                icon: Icons.location_on_outlined,
                text: "location".tr,
              ),
              // Calander
              RowOfIconAndTextWidget(
                icon: Icons.calendar_today_outlined,
                text: "date".tr,
              ),
            ],
          ),
          // Capacity && Status
          Padding(
            padding: EdgeInsetsDirectional.only(start: 1.w, top: 0.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: RowOfIconAndTextWidget(
                    icon: SizedBox(
                      height: 2.2.h,
                      width: 2.2.h,
                      child: CircleAvatar(
                        backgroundColor: faddenGreyColor,
                        child: Icon(
                          Icons.person,
                          color: whiteColor,
                          size: 8.sp,
                        ),
                      ),
                    ),
                    text: "capacity".tr,
                  ),
                ),
                isMyOpportunity
                    ? RowOfIconAndTextWidget(
                        icon: Icons.flag_sharp,
                        text: "status".tr,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          // Bottom Spae
          SizedBox(
            height: 3.h,
          )
        ],
      ),
    );
  }
}
