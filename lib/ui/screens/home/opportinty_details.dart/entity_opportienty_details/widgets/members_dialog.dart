import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/message_page/message_page.dart';
import 'package:syag/utils/colors.dart';

membersDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Center(
        child: Text("member_name".tr,
            style: Get.textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w700,
            )),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.public,
                  color: faddenGreyColor,
                  size: 20.sp,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 2.w),
                  child: Text(
                    "language".tr,
                    style: Get.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: faddenGreyColor,
                  size: 20.sp,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 2.w),
                  child: Text(
                    "city".tr,
                    style: Get.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  color: faddenGreyColor,
                  size: 20.sp,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 2.w),
                  child: Text(
                    "specializarion".tr,
                    style: Get.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  color: faddenGreyColor,
                  size: 20.sp,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 2.w),
                  child: Text(
                    "education_level".tr,
                    style: Get.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
            onPressed: () => Get.to(() => const MessagePage()),
            child: Text('send_query'.tr.toUpperCase()),
          ),
        ),
      ],
    ),
  );
}
