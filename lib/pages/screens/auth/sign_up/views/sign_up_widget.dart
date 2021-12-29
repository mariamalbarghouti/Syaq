import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_up/views/core/sign_up_body_widget.dart';
import 'package:syag/utils/colors.dart';


// SignUpController
// Sign Up Screen
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key,
    // TODO Delete it
    required this.isMember,
    this.isEdite,
  }) : super(key: key);
  final bool isMember;
  final bool? isEdite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: (isEdite == null)
            ? Text((isMember) ? "member".tr : "entity".tr)
            : Text("edite_my_profile_info".tr.toUpperCase()),
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
      body: SinUpBodyWidget(
        isMember: isMember,
      ),
    );
  }
}
