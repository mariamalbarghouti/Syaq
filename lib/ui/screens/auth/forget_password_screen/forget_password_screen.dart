import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/auth/forget_password_screen/widgets/forget_password_body.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';

// Forget Password
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mobile Number Text Controller
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("forget_password".tr.toUpperCase()),
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
      body: const ForgetPasswordBody(),
    );
  }
}
