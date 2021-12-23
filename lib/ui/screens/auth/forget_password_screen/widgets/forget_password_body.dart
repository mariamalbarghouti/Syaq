import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/verification_code_screen/verification_code_screen.dart';
import 'package:syag/ui/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';

// Forget Password Body
class ForgetPasswordBody extends HookWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // mobile number controller
    final mobileNumberController = useTextEditingController();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.all(5.w),
        // alignment: Alignment.center,
        child: Wrap(
          runSpacing: 5.h,
          alignment: WrapAlignment.center,
          children: [
            // Text Announcement
            Text(
              "forget_password_announcement".tr,
              style: Get.textTheme.bodyText1,
            ),
            // Mobile Text Input
            TextField(
              controller: mobileNumberController,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              style: const TextStyle(color: faddenGreyColor),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'mobile_number'.tr),
                  ),
            ),
            // Send Button
            Container(
              margin: EdgeInsets.only(top: 3.h),
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerificationCodePage()),
                child: Text(
                  "send".tr,
                  style: Get.textTheme.headline1!.copyWith(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
