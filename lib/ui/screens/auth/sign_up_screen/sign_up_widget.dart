import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/member_survey/member_survey.dart';
import 'package:syag/ui/screens/auth/sign_in_screen/sign_in.dart';
import 'package:syag/ui/screens/auth/sign_up_screen/widgets/entity_widgets/entity_widget.dart';
import 'package:syag/ui/screens/auth/sign_up_screen/widgets/member_widgets/memeber_widget.dart';
import 'package:syag/ui/screens/home/home_page/home_page.dart';
import 'package:syag/utils/colors.dart';

// Sign Up Screen
class SignUpScreen extends HookWidget {
  const SignUpScreen({
    Key? key,
    required this.isMember,
    this.isEdite,
  }) : super(key: key);
  final bool isMember;
  final bool? isEdite;
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> toggleAcceptConditionCheckBox = useState(false);
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: (isEdite == null)
            ? Text((isMember) ? "members".tr : "entity".tr)
            : Text("edite_my_profile_info".tr.toUpperCase()),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            isMember
                // Member Widget
                // Padding
                ? const MemberWidget()
                // Entity Widget
                : const EntityWidget(),
            // AcceptConditions
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Checkbox
                SizedBox(
                  height: 20.sp,
                  child: Checkbox(
                    value: toggleAcceptConditionCheckBox.value,
                    onChanged: (value) =>
                        toggleAcceptConditionCheckBox.value = value!,
                    activeColor: primaryColor,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                ),
                // Accept Conditions Text
                Text(
                  "accept_conditions".tr,
                  style: Get.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            // Space
            SizedBox(height: 3.h),
            // Next Button or SignUp
            ElevatedButton(
              onPressed: () {
                if (isMember && isEdite == null) {
                  Get.to(() => const MemberSurvey());
                } else if (!isMember && isEdite == null) {
                  Get.offAll(const HomePage());
                  // if(isMember && isEdite!=null)
                } else {
                  Get.back();
                }
              },
              child: (isEdite == null)
                  ? Text(isMember ? "next".tr : "sign_up".tr)
                  : Text("save".tr),
            ),
            // You are a member
            // Sign In
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "you_are_a_member_text".tr,
                  style: Get.textTheme.headline2,
                ),
                TextButton(
                  onPressed: () => Get.to(() => const SignInPage()),
                  child: Text(
                    "sign_in".tr,
                    style: Get.textTheme.headline2!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
