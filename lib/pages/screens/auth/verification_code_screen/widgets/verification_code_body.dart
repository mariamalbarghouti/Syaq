import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/reset_or_change_password_screen/reset_or_change_password_screen.dart';
import 'package:syag/utils/colors.dart';

// Verrivication Body
class VerrivicationBody extends HookWidget {
  const VerrivicationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Pin Code Controller
    final codeController = useTextEditingController();
    // end time
    final ValueNotifier<int> endTime =
        useState(DateTime.now().millisecondsSinceEpoch + 1000 * 60);
    // jase error
    final ValueNotifier<bool> hasError = useState(false);
    // StreamController<>? errorController;
    final errorController = useStreamController<ErrorAnimationType>();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.all(5.w),
        child: Column(
          children: [
            // Text Announcement
            Text(
              "verification_announcement".tr,
              style: Get.textTheme.bodyText1,
            ),
            // Space
            SizedBox(
              height: 5.h,
            ),

            // PIN Code Verification
            PinCodeTextField(
              onChanged: (String val) {},
              controller: codeController,
              appContext: context,
              length: 6,
              keyboardType: TextInputType.phone,
              textStyle: Get.textTheme.bodyText1!.copyWith(fontSize: 18.sp),
              pinTheme: PinTheme(
                selectedColor: primaryColor,
                inactiveColor: faddenGreyColor,
              ),
              animationDuration: const Duration(milliseconds: 300),
              onCompleted: (String? value) {},
            ),
            // Reset The Code After Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "reset_the_code_after".tr,
                    style: Get.textTheme.headline2!.copyWith(fontSize: 10.sp),
                  ),
                ),
                // CountDown
                CountdownTimer(
                  endTime: endTime.value,
                  endWidget: Container(),
                  textStyle: Get.textTheme.headline3,
                  widgetBuilder: (context, time) {
                    return Text(
                      "00:02",
                      style: Get.textTheme.headline3!
                          .copyWith(color: Get.theme.primaryColor),
                    );
                  },
                ),
              ],
            ),

            // Send Button
            Container(
              margin: EdgeInsets.only(top: 3.h),
              child: ElevatedButton(
                onPressed: () {
                  if (codeController.value.text.length != 6) {
                    errorController.add(
                      ErrorAnimationType.shake,
                    );
                    hasError.value = true;
                  } else {
                    hasError.value = false;
                  }
                  Get.to(() => const ResetOrChangePasswordPAge());
                },
                // Verify Text
                child: Text(
                  "verify".tr,
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
