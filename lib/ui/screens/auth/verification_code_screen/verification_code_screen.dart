import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/auth/verification_code_screen/widgets/verification_code_body.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

// Verrification Page
class VerificationCodePage extends HookWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("verification_code".tr),
        // Back Button
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
      // Body
      body: const VerrivicationBody(),
    );
  }
}
