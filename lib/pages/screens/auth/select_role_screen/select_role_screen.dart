import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/auth/select_role_screen/widgets/select_role_screen.dart';
import 'package:syag/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

// Select Role Screen
class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen();
  // TODO: Remove it
      static bool? isMember;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      // AppBar 
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "select_role".tr,
        ),
        // Back Arrow
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
      // Home Body
      body:const HomeBody(),
    );
  }
}