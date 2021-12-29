import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/sign_in_screen/sign_in.dart';
import 'package:syag/pages/screens/auth/sign_up/views/core/accept_conditions_widget.dart';
import 'package:syag/pages/screens/auth/sign_up/views/entity_widgets/pick_logo_widget/pick_logo_widget.dart';
import 'package:syag/pages/screens/auth/sign_up/views/entity_widgets/sign_up_entity_input_entries_widget.dart';
import 'package:syag/pages/screens/auth/sign_up/views/member_widgets/widgets/sign_up_member_input_entries_widget.dart';

// Sign Up Body Widget
class SinUpBodyWidget extends StatelessWidget {
  const SinUpBodyWidget({
    Key? key,
    required this.isMember,
  }) : super(key: key);
  final isMember;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 6.w,
          right: 6.w,
          top: 1.h,
          bottom: 3.h,
        ),
        child: Column(
          children: [
            isMember
                // Member Widget
                ? MemberSignUpInputEntriesWidget()
                : ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      PickLogoWidget(),
                      EntitySignUpInputEntriesWidget(),
                    ],
                  ),
            // Entity Widget
            // AcceptConditions
            const AcceptConditionsWidget(),
            // Space
            SizedBox(height: 3.h),
            // Next Button or SignUp
            ElevatedButton(
                onPressed: () {
                  // if (isMember && isEdite == null) {
                  //   Get.to(() => const MemberSurvey());
                  // } else if (!isMember && isEdite == null) {
                  //   Get.offAll(const HomePage());
                  //   // if(isMember && isEdite!=null)
                  // } else {
                  //   Get.back();
                  // }
                },
                child:
                    // (isEdite == null)
                    // ?
                    Text(isMember ? "next".tr : "sign_up".tr)
                // : Text("save".tr),
                ),
            // You are a member
            // Sign In
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "you_are_a_member".tr,
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
