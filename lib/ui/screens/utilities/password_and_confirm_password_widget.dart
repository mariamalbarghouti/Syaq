import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Column of Password And Confirm Password
class PasswordAndConfirmPasswordWidget extends HookWidget {
  const PasswordAndConfirmPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     //   Password Controller
    final passwordController = useTextEditingController();
      // Toggle Obsecure Password
    ValueNotifier<bool> isObscurePassword = useState(true);

    // Toggle Obsecure Confirm Password
    ValueNotifier<bool> isObscureConfirmPassword = useState(true);
      //  Confirm Controller
    final confirmPasswordController = useTextEditingController();
    return // Password
       Column(children: [
          // Password
        TextField(
          controller: passwordController,
          obscureText: isObscurePassword.value,
          obscuringCharacter: '●',
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'password'.tr),
                // Password Visibility Icon Button
                suffixIcon: IconButton(
                  onPressed: () =>
                      isObscurePassword.value = !isObscurePassword.value,
                  icon: Icon(
                    (isObscurePassword.value)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: faddenGreyColor,
                    size: 21.sp,
                  ),
                ),
              ),
        ),

        // Confirm Password
        TextField(
          controller: confirmPasswordController,
          obscureText: isObscureConfirmPassword.value,
          obscuringCharacter: '●',
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.visiblePassword,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'confirm_password_text'.tr),
                // Password Visibility Icon Button
                suffixIcon: IconButton(
                  onPressed: () => isObscureConfirmPassword.value =
                      !isObscureConfirmPassword.value,
                  icon: Icon(
                    (isObscureConfirmPassword.value)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: faddenGreyColor,
                    size: 21.sp,
                  ),
                ),
              ),),
       ],);
    // );
  }
}
