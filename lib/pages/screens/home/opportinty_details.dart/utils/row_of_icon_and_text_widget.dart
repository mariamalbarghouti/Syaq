import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Row Of Icon And Text Widget
class RowOfIconAndTextWidget extends StatelessWidget {
  const RowOfIconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final dynamic icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Opportunity Details Icon
        (icon is IconData)
            ? Icon(
                icon,
                color: faddenGreyColor,
                size: 15.sp,
              )
              // for creating a custom icon
            : icon,
        // Opportunity Details Text
        Padding(
          padding: EdgeInsetsDirectional.only(start: 2.w),
          child: Text(
            text,
            style: Get.textTheme.headline3!.copyWith(
              color: faddenGreyColor,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
