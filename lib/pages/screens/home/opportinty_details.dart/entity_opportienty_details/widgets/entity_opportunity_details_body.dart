import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/entity_opportienty_details/widgets/members_tab.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/apportunities_details_tab_enum.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/description_benefits_or_info_tab/description_benefits_or_info_tab.dart';
import 'package:syag/pages/screens/home/opportinty_details.dart/utils/row_of_icon_and_text_widget.dart';
import 'package:syag/utils/colors.dart';

// Entity Opportunity Details
class EntityOpportunityDetailsBody extends StatefulWidget {
  const EntityOpportunityDetailsBody({ Key? key }) : super(key: key);

  @override
  State<EntityOpportunityDetailsBody> createState() => _EntityOpportunityDetailsBodyState();
}

class _EntityOpportunityDetailsBodyState extends State<EntityOpportunityDetailsBody> with TickerProviderStateMixin {
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
    return Padding(
        padding: EdgeInsets.only(top: 4.w, right: 4.w, left: 4.w),
        child: CustomScrollView(slivers: [
          // Row Contains
          // Logo, companyName,Location
          // Calender and capacity
          SliverToBoxAdapter(
            child: Column(children: [
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
              // Person
              Padding(
                padding: EdgeInsetsDirectional.only(start: 1.w, top: 0.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Capacity
                    
                    Container(
                      child: RowOfIconAndTextWidget(
                        icon: SizedBox(
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
                        text: "capacity".tr,
                      ),
                    ),
                    // Status
                    RowOfIconAndTextWidget(
                      icon: Icons.flag_sharp,
                      text: "status".tr,
                    ),
                    // Space
                    SizedBox(
                      height: 3.h,
                    )
                  ],
                ),
              ),
           
              // ),
            ]),
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
                child: TabBarView(controller: _controller, children: const [
                  DescriptionBenefitsOrInfoTab(
                      tabIs: OpportunitiesDetailsTabType.info),
                  MembersTab(),
                ]),),
        ]),
      );
  }
}