import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Opportunity Tab Bar Widget
class OpportunityTabBarWidget extends StatelessWidget {
  const OpportunityTabBarWidget({
    Key? key,
    required this.tabs,
  }) : super(key: key);
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      // Style of Member Tab Bar
      child: Container(
        padding: EdgeInsets.all(0.7.w),
        height: 9.h,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F7F9),
          borderRadius: BorderRadius.circular(14.w),
          shape: BoxShape.rectangle,
        ),
        child: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(12.w),
            color: whiteColor,
          ),
          tabs: tabs,
        ),
      ),
    );
  }
}
