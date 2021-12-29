import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/widgets/entity_body/entity_body.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/widgets/member_body/member_body.dart';
import 'package:syag/pages/screens/home/notification_screen/notification_screen.dart';
import 'package:syag/utils/colors.dart';

// TODO: responsive appbar
// Home Tab Bar
class HomeTapBar extends StatelessWidget {
  const HomeTapBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        // Title if member
        // Text "Hi Gest" + "Welcom Text"
        // else Image
        title: Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(bottom: 1.h),
          child: SelectRoleScreen.isMember ?? false
              // "Hi Gest" + "Welcom Text"
              ? RichText(
                  text: TextSpan(
                    text: 'hi'.tr + " " + "name".tr + '\n',
                    style: Get.theme.textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                    children: [
                      TextSpan(
                        text: 'lets_find_your_opportunity'.tr,
                        style: Get.theme.textTheme.headline3!
                            .copyWith(color: faddenGreyColor),
                      ),
                    ],
                  ),
                )
              // app logo if entity
              : SvgPicture.asset(
                  "assets/images/logo.svg",
                  height: 5.h,
                  width: 5.w,
                ),
        ),
        // Notification Icon
        actions: [
          Container(
            margin: EdgeInsets.all(3.w),
            height: 10.w,
            width: 10.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: faddenGreenColor,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(6),
              shape: BoxShape.rectangle,
            ),
            // Notification Icon Button
            child: IconButton(
              onPressed: () => Get.to(() => const NotificationPage()),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.notifications),
              color: faddenGreyColor,
              iconSize: 20.sp,
            ),
          ),
        ],
      ),
      // Body
      body: (SelectRoleScreen.isMember ?? false)
          ? const MemberBody()
          : const EntityBody(),
    );
  }
}
