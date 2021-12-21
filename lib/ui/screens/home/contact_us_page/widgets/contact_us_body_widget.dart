import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/contact_us_page/widgets/social_media_widget.dart';
import 'package:syag/ui/screens/home/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/constants.dart';

// Contact Us Body
class ContactUsBodyWidget extends HookWidget {
  const ContactUsBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Full Name Controller
    final fullNameConlastNameControllertroller = useTextEditingController();
    // Email Controller
    final emailAdressController = useTextEditingController();
    // Mobile Controller
    final mobileNumberController = useTextEditingController();
    // Type Controller
    final typeController = useTextEditingController();
    // Message Controller
    final messageController = useTextEditingController();
    // Subject Controller
    final subjectController = useTextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          children: [
            // Full Name
            TextField(
              controller: fullNameConlastNameControllertroller,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'full_name'.tr),
                  ),
            ),

            // Email Address
            TextField(
              controller: emailAdressController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'email'.tr),
                  ),
            ),

            // Mobile Number
            TextField(
              controller: mobileNumberController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'mobile_number'.tr),
                  ),
            ),
            // Type
            TextField(
              controller: typeController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'type'.tr),
                  ),
            ),
            // Subject
            TextField(
              controller: subjectController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'subject'.tr),
                  ),
            ),

            // Message
            TextField(
              controller: messageController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: inputStyle,
              decoration: const InputDecoration()
                  .applyDefaults(Get.theme.inputDecorationTheme)
                  .copyWith(
                    label: LableWithStarWidget(text: 'message'.tr),
                  ),
            ),
            // Send Button
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: ElevatedButton(
                  onPressed: () => Get.back(), child: Text("send".tr)),
            ),
            // Or Contact Us With
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "or_contact_us_with".tr,
                // textAlign: TextAlign.,
                style: Get.theme.textTheme.headline2,
              ),
            ),
            // Social Media Row
            const ContactUsViaSocialMediaWidget(),
          ],
        ),
      ),
    );
  }
}
