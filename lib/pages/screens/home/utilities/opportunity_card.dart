import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Opportunity Card
class OpportunityCard extends StatelessWidget {
  const OpportunityCard({
    Key? key,
    required this.onTap,
    required this.opportunityTitle,
    required this.date,
    required this.location,
    required this.status,
    required this.isMember,
     this.img,
  }) : super(key: key);
  final VoidCallback onTap;
  final String? img;
  final String opportunityTitle;
  final String date;
  final String location;
  final String status;
  final bool isMember;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        type: MaterialType.card,
        color: whiteColor,
        elevation: 5,
        shadowColor: shadowColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Opportunity image
              isMember
                  ? Row(
                      children: [
                        CircleAvatar(
                          foregroundColor: blackColor,
                          child: ClipOval(
                            child: Image.asset(img??''),
                          ),
                        ),
                        // Opportunity Title
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 4.w),
                          child: Text(
                            opportunityTitle,
                            // textAlign: TextAlign.end,
                            style: Get.textTheme.headline3!
                                .copyWith(color: faddenGreyColor),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              // Opportunity Title
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: EdgeInsets.all(1.w),
                  child: Text(
                    opportunityTitle,
                    style: Get.textTheme.headline4,
                  ),
                ),
              ),
              // Date
              Flexible(
                child: Row(
                  children: [
                    // Date icon
                    Icon(
                      Icons.calendar_today_outlined,
                      color: faddenGreyColor,
                      size: 13.sp,
                    ),
                    // Date Text
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 2.w),
                      child: Text(
                        date,
                        style: Get.textTheme.headline3!.copyWith(
                          color: faddenGreyColor,
                          fontSize: 8.5.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Location
              Flexible(
                child: Row(
                  children: [
                    // Location Icon
                    Icon(
                      Icons.location_on_outlined,
                      color: faddenGreyColor,
                      size: 15.sp,
                    ),
                    // Location Text
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 2.w),
                      child: Text(
                        location,
                        style: Get.textTheme.headline3!.copyWith(
                          color: faddenGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Status 
              !isMember?
              Flexible(
                child: Row(
                  children: [
                    // Status Icon
                    Icon(
                      Icons.flag_sharp,
                      color: faddenGreyColor,
                      size: 15.sp,
                    ),
                  
                    // Status Text
                 
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 2.w),
                      child: Text(
                        status,
                        style: Get.textTheme.headline3!.copyWith(
                          color: faddenGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ):const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
