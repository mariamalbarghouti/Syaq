import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/home/message_page/message_page.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/utils/row_of_icon_and_text_widget.dart';

// Contains Icon About The Course's Members
memberDetailsDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      // Member Name
      title: Center(
        child: Text("member_name".tr,
            style: Get.textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w700,
            )),
      ),
      // Content Name
      content: SingleChildScrollView(
        child: Column(
          children: [
            // Language
            RowOfIconAndTextWidget(
              icon: Icons.public,
              text: "language".tr,
            ),

            // City
            RowOfIconAndTextWidget(
              icon: Icons.location_on_outlined,
              text: "city".tr,
            ),

            // Specializarion
            RowOfIconAndTextWidget(
              icon: Icons.school,
              text: "specializarion".tr,
            ),

            // Education Level
            RowOfIconAndTextWidget(
              icon: Icons.school,
              text: "education_level".tr,
            ),
          ],
        ),
      ),
      // Send Query Button
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
