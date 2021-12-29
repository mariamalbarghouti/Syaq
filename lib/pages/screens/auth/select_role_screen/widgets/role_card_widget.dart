import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/controllers/auth/select_role_controller/select_role_controller.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/utils/colors.dart';

// Role Card Widget ["Member" , "Entity"]
class RoleCardWidget extends StatelessWidget {
  const RoleCardWidget({
    Key? key,
    required this.roleImage,
    required this.roleTitle,
  }) : super(key: key);

  final String roleImage;
  final String roleTitle;
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectRoleController>(
      id: roleTitle,
      builder: (controller) {
        return InkWell(
          onTap: () {
            debugPrint(controller.isClicked.toString());
            controller.toggle(id: roleTitle);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 0.2.h),
            decoration: BoxDecoration(
              color: // TODO make it controller
               controller.isClicked ? primaryColor : whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3.w),
                topRight: Radius.circular(3.w),
              ),
            ),
            child: Column(
              children: [
                // Image
                SvgPicture.asset(
                  roleImage,
                  width: 45.w,
                ),
                // Title
                Material(
                  shadowColor: shadowColor.withOpacity(0.5),
                  elevation: 5,
                  child: Container(
                    color: whiteColor,
                    width: 45.w,
                    height: 5.h,
                    child: Text(
                      roleTitle,
                      textAlign: TextAlign.center,
                      style: Get.textTheme.headline2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
