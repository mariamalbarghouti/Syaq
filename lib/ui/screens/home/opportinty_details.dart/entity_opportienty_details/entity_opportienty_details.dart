import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/message_page/message_page.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/entity_opportienty_details/widgets/members.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/member_opportienty_details/widgets/opportunity_details_widget/widgets/logo_and_company_name.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/apportunities_details_tab_enum.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/description_benefits_or_info_tab.dart';
import 'package:syag/utils/colors.dart';

//
class EntityOpportientiesDetails extends StatefulWidget {
  const EntityOpportientiesDetails();

  @override
  State<EntityOpportientiesDetails> createState() =>
      _EntityOpportientiesDetailsState();
}

class _EntityOpportientiesDetailsState extends State<EntityOpportientiesDetails>
    with TickerProviderStateMixin {
  TabController? _controller;
  int currentIndex = 0;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    _controller!.addListener(() {
      setState(() {
        currentIndex = _controller!.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("opportunity_details".tr.toUpperCase()),
        leading: IconButton(
          onPressed: () => Get.back(),
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20.sp,
          ),
        ),
      ),
      body:
          // DefaultTabController(
          //   length: 2,
          // child:
          Padding(
        padding: EdgeInsets.only(top: 4.w, right: 4.w, left: 4.w),
        child: CustomScrollView(
          slivers: [
            // Row Contains
            // Logo, companyName,Location
            // Calender and capacity
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // Logo And Company Name

                  // Opportunity Title
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    // heightFactor: 0.3.h,
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
                  // Person
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 1.w, top: 0.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 2.2.h,
                                width: 2.2.h,
                                // margin:
                                child: CircleAvatar(
                                  // foregroundColor: faddenGreyColor,
                                  backgroundColor: faddenGreyColor,
                                  child: Icon(
                                    Icons.person,
                                    color: whiteColor,
                                    size: 8.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.only(start: 2.3.w),
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
                        // Status
                        Row(
                          children: [
                            Icon(
                              Icons.flag_sharp,
                              color: faddenGreyColor,
                              size: 13.sp,
                            ),
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
                        // : const SizedBox.shrink(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(1.5.w),
                height: 8.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F7F9),
                  // border: Border.all(style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(14.w),
                  shape: BoxShape.rectangle,
                ),
                child: TabBar(
                  controller: _controller,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.w),
                    color: whiteColor,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "info".tr,
                        style: Get.textTheme.bodyText1!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "members".tr,
                        style: Get.textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              // child:
              // hasScrollBody: false,
              child: TabBarView(
                controller: _controller,
                children: const [
                  DescriptionBenefitsOrInfoTab(
                      tabIs: OpportunitiesDetailsTabType.info),
                  Members(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: (_controller!.index != 0)
          ? Container(
              color: Colors.transparent,
              margin: EdgeInsetsDirectional.only(
                end: 22.w,
                start: 22.w,
                bottom: 5.h,
              ),
              width: 30.w,
              // padding: EdgeInsets.symmetric(horizontal: 4.w),
              //  width: 60,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const MessagePage()),
                // style: ,
                child: FittedBox(child: Text('send_query_to_all_members'.tr)),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
