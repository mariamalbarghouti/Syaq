import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/utils/colors.dart';

// Bottom Nave Bar for Home
class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
    required this.onPress,
    required this.currentIndex ,
  }) : super(key: key);
  final Function(int) onPress;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    // return
    // Shape Of Bottom NavBar
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        // Bottom navigation bar
        child: BottomNavigationBar(
          onTap: onPress,
          backgroundColor: whiteColor,
          currentIndex: currentIndex,
          selectedItemColor: primaryColor,
          unselectedItemColor: faddenGreyColor,
          unselectedLabelStyle: TextStyle(
            color: primaryColor,
            fontSize: 12.sp,
          ),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: primaryColor,
            fontSize: 12.sp,
          ),
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          // pages
          items: [
            // Home Page
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25.sp),
              label: 'home'.tr,
            ),
            // My Opportunities Page
            // Or
            // Add Opportunity Page
            BottomNavigationBarItem(
              icon: Icon(Icons.flag_sharp, size: 25.sp),
              label: (SelectRoleScreen.isMember ?? false)
                  ? 'my_opportunities'.tr
                  : "add_opportunity".tr,
            ),
            // Profile Page
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 25.sp),
              label: 'profile'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
