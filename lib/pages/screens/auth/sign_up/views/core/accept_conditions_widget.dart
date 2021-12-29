import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Accept Conditions Widget
class AcceptConditionsWidget extends StatelessWidget {
  const AcceptConditionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Checkbox
        SizedBox(
          height: 45.sp,
          child: Checkbox(
            onChanged: (_) {},
            value: true,
            // value: toggleAcceptConditionCheckBox.value,
            // onChanged: (value) =>
            //     toggleAcceptConditionCheckBox.value = value!,
            activeColor: primaryColor,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        // Accept Conditions Text
        Text(
          "accept_conditions".tr,
          style: Get.textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
