import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Member Opportunity Details Info Widget
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
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
              // Calander
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
                        // fontSize: 8.5.sp,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 1.w, top: 0.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      // Capacity's Icon
                      SizedBox(
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
                      // Cpacity Text
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 2.3.w),
                        child: Text(
                          "capacity".tr,
                          style: Get.textTheme.headline3!.copyWith(
                            color: faddenGreyColor,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isMyOpportunity
                    ? Row(
                        children: [
                          // flag Icon
                          Icon(
                            Icons.flag_sharp,
                            color: faddenGreyColor,
                            size: 13.sp,
                          ),
                          // Status
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 2.w),
                            child: Text(
                              "status".tr,
                              style: Get.textTheme.headline3!.copyWith(
                                color: faddenGreyColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
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
