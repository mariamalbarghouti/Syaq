import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/auth/verification_code_screen/widgets/verification_code_body.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

class VerificationCodeScreen extends HookWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("verification_code".tr),
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
      body: VerrivicationBody(),
    );
  }
}
// TextButton(
// child: Text("Set Text"),
//       onPressed: () {
//         setState(() {
//           textEditingController.text = "123456";
//         });
//       },
//     )),
