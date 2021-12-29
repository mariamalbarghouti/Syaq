import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/logo_picker_controller.dart';
import 'package:syag/pages/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';

// Entity Logo Picker Widget
// Enable user pick an image
class LogoPickerWidget extends StatelessWidget {
  const LogoPickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Circule Design
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 0.2.w,
              color: faddenGreenColor.withAlpha(100),
            ),
          ),
          // Icon Button for picking
          child: IconButton(
            icon: const Icon(
              Icons.photo_library_rounded,
              color: faddenGreenColor,
            ),
            onPressed: () async =>
                await Get.find<LogoPickerController>().logoPick(),
          ),
        ),
        // Add Logo Text
        LableWithStarWidget(
          text: "add_entity_logo".tr,
          style: Get.theme.textTheme.headline2!.copyWith(
            color: faddenGreyColor,
          ),
        ),
      ],
    );
  }
}
