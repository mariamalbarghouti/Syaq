import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/pages/screens/home/home_page/home_page.dart';
import '../../forget_password_screen/forget_password_screen.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';


// Registration Input Widget
class RegistrationComponetsWidget extends HookWidget {
  const RegistrationComponetsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mobile Text Controller
    final mobileNumberController = useTextEditingController();
    // Password Text Controller
    final passwordController = useTextEditingController();
    // Togle Obsecure
    ValueNotifier<bool> isObscurePassword = useState(true);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            // Mobile Number
            TextField(
              controller: mobileNumberController,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              style: const TextStyle(color: faddenGreyColor),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'mobile_number'.tr,
                    // labelStyle: TextStyle(color: Colors.red),
                  ),
            ),
            // Password
            TextField(
              controller: passwordController,
              obscureText: isObscurePassword.value,
              obscuringCharacter: '●',
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: faddenGreyColor),
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    labelText: 'password'.tr,
                    // Password Visibility Icon Button
                    suffixIcon: IconButton(
                      onPressed: () =>
                          isObscurePassword.value = !isObscurePassword.value,
                      icon: Icon(
                        (isObscurePassword.value)
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: faddenGreyColor,
                      ),
                    ),
                    // Forget Password button
                    counter: TextButton(
                      onPressed: () =>
                          Get.to(() => const ForgetPasswordScreen()),
                      child: Text(
                        "forget_password".tr,
                        style: Get.textTheme.headline3,
                      ),
                    ),
                  ),
            ),
            // Space
            SizedBox(
              height: 3.h,
            ),
            // Sign in Button
            ElevatedButton(
              onPressed: () => Get.offAll(const HomePage()),
              child: Center(
                child: FittedBox(
                  child: Text(
                    "sign_in".tr.toUpperCase(),
                    style: Get.textTheme.headline1!.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ),
            // Sign UP Text and Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Not A Member? text
                Text(
                  "not_a_member".tr,
                  style: Get.textTheme.headline3,
                ),

                // Sign Up Button
                TextButton(
                  onPressed: () => Get.to(() => const SelectRoleScreen()),
                  child: Text(
                    "sign_up".tr,
                    style: Get.textTheme.headline3!
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
