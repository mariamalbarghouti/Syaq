import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/select_role_screen/widgets/role_card_widget.dart';
import 'package:syag/utils/colors.dart';

// Home Body
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Member
              Expanded(
                flex: 1,
                child: RoleCardWidget(
                  roleImage: "assets/images/members.svg",
                  roleTitle: "member".tr,
                ),
              ),

              // Entity
              Expanded(
                flex: 1,
                child: RoleCardWidget(
                  roleImage: "assets/images/entity.svg",
                  roleTitle: "entity".tr,
                ),
              ),
            ],
          ),
          // Next Button
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.h),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("next".tr,
                  style: Get.textTheme.headline1!.copyWith(color: whiteColor)),
            ),
          ),
        ],
      ),
    );
  }
}
