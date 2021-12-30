import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/core_controllers/accept_conditions.dart';
import 'package:syag/utils/colors.dart';

// Accept Conditions Widget
class AcceptConditionsWidget extends StatelessWidget {
  const AcceptConditionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Accept Terms And Condition SwitchBox
        SizedBox(
          height: 45.sp,
          child: GetX<AcceptConditionsController>(
            builder: (controller) => Checkbox(
              value: controller.isTermsAccepted.value,
              onChanged: (value) => controller.isTermsAccepted.toggle(),
              activeColor: primaryColor,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ),
        // Accept Conditions Text
        TextButton(
          onPressed: () =>
              Get.find<AcceptConditionsController>().readTermsAndConditions(),
          child: Text(
            "accept_conditions".tr,
            style: Get.textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
            ),
          ),
        ),
      ],
    );
  }
}
