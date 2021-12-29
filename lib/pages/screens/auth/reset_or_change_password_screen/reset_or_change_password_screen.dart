import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/auth/sign_in_screen/sign_in.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

// Reset Or Change Password
class ResetOrChangePasswordPAge extends HookWidget {
  const ResetOrChangePasswordPAge({
    Key? key,
    this.isChangePassword,
  }) : super(key: key);
  final bool? isChangePassword;
  @override
  Widget build(BuildContext context) {
    // Mobile Text Controller
    final newPasswordController = useTextEditingController();
    // Password Text Controller
    final confirmNewPasswordController = useTextEditingController();
    ValueNotifier<bool> isNewPassObscurePassword = useState(true);
    ValueNotifier<bool> isConfirmNewPassObscurePassword = useState(true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (isChangePassword == null)
              ? "reset_password".tr.toUpperCase()
              : "change_password".tr.toUpperCase(),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(5.w),
          // alignment: Alignment.center,
          child: Column(
            // runSpacing: 5.h,
            // alignment: WrapAlignment.center,
            children: [
              // Text Announcement
              (isChangePassword == null)
                  ? Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        "reset_password_announcement".tr,
                        style: Get.textTheme.bodyText1,
                        // textAlign: TextAlign.start,
                      ),
                    )
                  : TextField(
                      controller: newPasswordController,
                      obscureText: isNewPassObscurePassword.value,
                      obscuringCharacter: '●',
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(color: faddenGreyColor),
                      decoration: const InputDecoration()
                          .applyDefaults(Get.theme.inputDecorationTheme)
                          .copyWith(
                            labelText: 'old_password'.tr,
                            // Password Visibility Icon Button
                            suffixIcon: IconButton(
                              onPressed: () => isNewPassObscurePassword.value =
                                  !isNewPassObscurePassword.value,
                              icon: Icon(
                                (isNewPassObscurePassword.value)
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: faddenGreyColor,
                                size: 15.sp,
                              ),
                            ),
                          ),
                    ),
              // New Password
              TextField(
                controller: newPasswordController,
                obscureText: isNewPassObscurePassword.value,
                obscuringCharacter: '●',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: faddenGreyColor),
                decoration: const InputDecoration()
                    .applyDefaults(Get.theme.inputDecorationTheme)
                    .copyWith(
                      labelText: 'new_password'.tr,
                      // Password Visibility Icon Button
                      suffixIcon: IconButton(
                        onPressed: () => isNewPassObscurePassword.value =
                            !isNewPassObscurePassword.value,
                        icon: Icon(
                          (isNewPassObscurePassword.value)
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: faddenGreyColor,
                          size: 15.sp,
                        ),
                      ),
                    ),
              ),
              // Confirm New Password
              TextField(
                controller: confirmNewPasswordController,
                obscureText: isConfirmNewPassObscurePassword.value,
                obscuringCharacter: '●',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: faddenGreyColor),
                decoration: const InputDecoration()
                    .applyDefaults(Get.theme.inputDecorationTheme)
                    .copyWith(
                      labelText: 'confirm_new_password'.tr,
                      // Password Visibility Icon Button
                      suffixIcon: IconButton(
                        onPressed: () => isConfirmNewPassObscurePassword.value =
                            !isConfirmNewPassObscurePassword.value,
                        icon: Icon(
                          (isConfirmNewPassObscurePassword.value)
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: faddenGreyColor,
                          size: 15.sp,
                        ),
                      ),
                    ),
              ),
              // Space
              SizedBox(
                height: 5.h,
              ),
              // Reset Button
              ElevatedButton(
                onPressed: () => (isChangePassword == null)
                    ? Get.offAll(() => const SignInPage())
                    : Get.back(),
                child: FittedBox(
                    child: Text(
                  (isChangePassword == null)
                      ? "reset_password".tr.toUpperCase()
                      : "save".tr.toUpperCase(),
                  style: Get.textTheme.headline1!
                      .copyWith(color: whiteColor, fontSize: 12.sp),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Fluttertoast.showToast(
//                         msg: 'verificationCode_shortTextMsg'.tr,
//                         toastLength: Toast.LENGTH_LONG,
//                         timeInSecForIosWeb: 1,
//                         backgroundColor: const Color(0xff342b26),
//                       );
