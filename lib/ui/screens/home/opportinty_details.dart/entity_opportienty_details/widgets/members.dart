import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/entity_opportienty_details/widgets/members_dialog.dart';
import 'package:syag/utils/colors.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:2.h),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(top :2.w,right: 1.5.w,left:1.5.w,bottom: 1.h),
                // padding: EdgeInsets.all(5.w),
                // clipBehavior: Clip.hardEdge,
                // color: whiteColor,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: ListTile(
                  title: Row(
                    // crossAxisAlignment: ,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "member_name".tr,
                        style: Get.textTheme.headline4,
                      ),
                      Text(
                        "category".tr,
                        style: Get.textTheme.headline3!.copyWith(
                          color: faddenGreyColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  onTap: () =>membersDialog(context: context),
                  // leading: Icon(Icons.ac_unit_outlined),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: faddenGreyColor,
                            size: 17.sp,
                          ),
                          Padding(
                                    padding: EdgeInsetsDirectional.only(start: 2.w),
                            child: Text("city".tr, style: Get.textTheme.headline3!.copyWith(
                                          color: faddenGreyColor,
                                          fontSize: 12.sp,),),
                          ),
                        ],
                      ),
                      Text(
                        "member_date".tr,
                        style: Get.textTheme.headline3!.copyWith(
                          color: faddenGreyColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ),
        //  ElevatedButton(
        //     onPressed: () => Get.to(() => const Message(),
            
        //     ),
        //     // pa
        //     // style: ,
        //     child: FittedBox(child: Text('send_query_to_all_members'.tr)),
        //   )
        ],
      ),
    );
  }
}
