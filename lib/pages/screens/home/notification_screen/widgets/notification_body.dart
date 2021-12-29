import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Notification Body
class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.all(4.w),
            child: Material(
              color: whiteColor,
              shadowColor: shadowColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(9),
              elevation: 7,
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Notification Title
                    Text(
                      "notification_title".tr,
                      style: Get.textTheme.headline2!
                          .copyWith(color: primaryColor),
                    ),
                    // Notification Content
                    Text(
                      'notification_content'.tr,
                      textAlign: TextAlign.justify,
                      style: Get.textTheme.headline3!.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // Notification Date
                    Text(
                      'date'.tr,
                      style: Get.textTheme.headline3!.copyWith(
                        color: faddenGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
