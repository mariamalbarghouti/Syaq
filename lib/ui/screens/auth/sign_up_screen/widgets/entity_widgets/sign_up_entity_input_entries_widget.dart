import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

//MemberSignUpInputEntriesWidget
class EntitySignUpInputEntriesWidget extends HookWidget {
const EntitySignUpInputEntriesWidget();
  @override
  Widget build(BuildContext context) {
    // Entity Name Controller
    final entityNameController = useTextEditingController();
    // Entity Type Controller
    final typeOfNameController = useTextEditingController();
    // DescriptionOrInfo Of The Entity Controller
    final descriptionOfTheEntityController = useTextEditingController();
    // Ministry Issued Certification Number Controller
    final ministryIssuedCertificationNumberController =
        useTextEditingController();
    // Email Controller
    final emailController = useTextEditingController();
    // Mobile Number Controller
    final mobileController = useTextEditingController();
    // Contact Name Controller
    final contactNameController = useTextEditingController();
    // Contact Mobile Num Controller
    final contactMobileNumController = useTextEditingController();
    // Website Url Controller
    final websiteUrlController = useTextEditingController();
    // Social Media Url Controllerr
    final socialMediaUrlController = useTextEditingController();
    // Password Controller
    final passwordController = useTextEditingController();
    // Confirm Password Controller
    final confirmPasswordController = useTextEditingController();

    // Toggle Obsecure Password
    ValueNotifier<bool> isObscurePassword = useState(true);

    // Toggle Obsecure Confirm Password
    ValueNotifier<bool> isObscureConfirmPassword = useState(true);

    return Column(
      children: [
        // Entity Name
        TextField(
          controller: entityNameController,
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
          controller: typeOfNameController,
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
          controller: descriptionOfTheEntityController,
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
          controller: ministryIssuedCertificationNumberController,
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
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          style:inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'email'.tr),
              ),
        ),

        // Phone number
        TextField(
          controller: mobileController,
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
          controller: contactNameController,
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
          controller: contactMobileNumController,
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
          controller: websiteUrlController,
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
          controller: socialMediaUrlController,
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
              ),
        ),
     
      ],
    );
  }
}
