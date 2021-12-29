import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/entity_sing_up_controller.dart';
import 'package:syag/pages/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Entity SignUp Input Entries Widget
// Contains all the input field
class EntitySignUpInputEntriesWidget extends GetView<EntitySignUpController> {
  const EntitySignUpInputEntriesWidget();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Entity Name
        TextField(
          controller: controller.entityNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'entity_name'.tr),
              ),
        ),

        // Type Of Entity
        TextField(
          controller: controller.typeOfNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'type_of_entity'.tr),
              ),
        ),

        // DescriptionOrInfo Of The Entity
        TextField(
          controller: controller.descriptionOfTheEntityController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label:
                    LableWithStarWidget(text: 'description_of_the_entity'.tr),
              ),
        ),

        // Ministry Issued Certification Number
        TextField(
          controller: controller.ministryIssuedCertificationNumberController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(
                    text: 'ministry_issued_certification_number'.tr),
              ),
        ),

        // Email
        TextField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'email'.tr),
              ),
        ),

        // Phone number
        TextField(
          controller: controller.mobileController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'mobile_number'.tr),
              ),
        ),

        // Contact Name
        TextField(
          controller: controller.contactNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'contact_name'.tr),
              ),
        ),

        // Contact Mobile Num
        TextField(
          controller: controller.contactMobileNumController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'contact_mobile_num'.tr),
              ),
        ),

        // Website Url
        TextField(
          controller: controller.websiteUrlController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'website_url'.tr),
              ),
        ),

        // Social Media Url
        TextField(
          controller: controller.socialMediaUrlController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'social_media_url'.tr),
              ),
        ),
        //
        // Password
        Obx(
          () => TextField(
            controller: controller.passwordController,
            obscureText: controller.isObscurePassword.value,
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
                    onPressed: () => controller.isObscurePassword.toggle(),
                    // isObscurePassword.value = !isObscurePassword.value,
                    icon: Icon(
                      (controller.isObscurePassword.value)
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: faddenGreyColor,
                      size: 21.sp,
                    ),
                  ),
                ),
          ),
        ),
        // Confirm Password
        Obx(
          () => TextField(
            controller: controller.confirmPasswordController,
            obscureText: controller.isObscureConfirmPassword.value,
            obscuringCharacter: '●',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            style: inputStyle,
            decoration: const InputDecoration()
                .applyDefaults(Get.theme.inputDecorationTheme)
                .copyWith(
                  label: LableWithStarWidget(text: 'confirm_password'.tr),
                  // Password Visibility Icon Button
                  suffixIcon: IconButton(
                    onPressed: () =>
                        controller.isObscureConfirmPassword.toggle(),
                    icon: Icon(
                      (controller.isObscureConfirmPassword.value)
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: faddenGreyColor,
                      size: 21.sp,
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
