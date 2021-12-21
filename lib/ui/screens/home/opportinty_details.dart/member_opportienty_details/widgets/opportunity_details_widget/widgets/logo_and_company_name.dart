import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Logo And Company Name
class OpportunityDetailIconWidget extends StatelessWidget {
  const OpportunityDetailIconWidget({Key? key,required this.icon}) : super(key: key);
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Logo
      icon,
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
    );
  }
}
