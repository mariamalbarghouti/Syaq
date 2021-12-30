import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/entity_controllers/logo_picker_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/views/entity_widgets/pick_logo_widget/logo_picker_widget.dart';

// Entity Logo from mobile
// Contains ["Picked", "Unpicked Logo"]
class PickLogoWidget extends GetView<LogoPickerController> {
  const PickLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.w,
        right: 6.w,
        top: 5.h,
        bottom: 3.h,
      ),
      child: Center(
        child: GetBuilder<LogoPickerController>(
          builder: (controller) => controller.logo.value.fold<Widget>(
            // Initial Widget 
            // pick an image
            (_) => const LogoPickerWidget(),
            // Picked Image
            (r) => CircleAvatar(
              radius: 30,
              child: ClipOval(
                child: Image.file(
                  r!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
