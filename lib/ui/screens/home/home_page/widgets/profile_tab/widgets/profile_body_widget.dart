import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/reset_or_change_password_screen/reset_or_change_password_screen.dart';
import 'package:syag/ui/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/ui/screens/auth/sign_in_screen/sign_in.dart';
import 'package:syag/ui/screens/auth/sign_up_screen/sign_up_widget.dart';
import 'package:syag/ui/screens/home/about_us_or_terms_and_conditions_page/about_us_or_terms_and_conditions_page.dart';
import 'package:syag/ui/screens/home/contact_us_page/contact_us_page.dart';
import 'package:syag/ui/screens/home/home_page/widgets/profile_tab/widgets/language_dialog.dart';
import 'package:syag/ui/screens/home/opportunity_search_or_my_fav_page/opportunity_or_my_fav_page.dart';
import 'package:syag/utils/colors.dart';

// Profile Body Widget
class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 6.w, right: 6.w, left: 6.w, bottom: 10.w),
        child: Column(
          children: [
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              type: MaterialType.card,
              color: whiteColor,
              elevation: 5,
              child: Column(
                children: [
                  Column(
                    children: [
                      // Edite My Profile
                      ListTile(
                        onTap: () => Get.to(
                          () => SignUpScreen(
                            isMember: SelectRoleScreen.isMember ?? false,
                            isEdite: true,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "edite_my_profile_info".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      // Change Password
                      ListTile(
                        onTap: () => Get.to(
                          () => const ResetOrChangePassword(
                              isChangePassword: true),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "change_password".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      // My Favorite
                      ListTile(
                        // OpportunitiesOrMyFavorite
                        onTap: () => Get.to(
                          () => const OpportunitySearchOrMyFavoritePage(
                              isFavorite: true,),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "my_favorite".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      // Change Language
                      ListTile(
                        onTap: () => languageDialog(context: context),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "change_language".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),

                      // Contact Us
                      ListTile(
                        onTap: () => Get.to(
                          () => const ContactUsPage(),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "contact_us".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      // About Us
                      ListTile(
                        onTap: () => Get.to(
                          () => const AboutUsOrTermsAndConditionsPage(
                            isAboutUs: true,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "about_us".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      // Terms And Conditions
                      ListTile(
                        onTap: () => Get.to(
                          () => const AboutUsOrTermsAndConditionsPage(
                            isAboutUs: false,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "terms_and_conditions".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),
                      //my_favorite
                      ListTile(
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: blackColor,
                          size: 13.sp,
                        ),
                        leading: Text(
                          "share_app".tr,
                          style: Get.textTheme.headline2,
                        ),
                      ),

                      Divider(
                        color: const Color(0xFFF8F9FF),
                        height: 0.5.h,
                        thickness: 0.5.h,
                        endIndent: 2.w,
                        indent: 2.w,
                      ),
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            right: 4.w, left: 4.w, top: 4.w, bottom: 3.w),
                        child: SvgPicture.asset(
                          "assets/images/wothoq.svg",
                          height: 5.h,
                          width: 20.w,
                        ),
                      )
                    ],
                  ),
                  // MaterialButton(onPressed: (){})
                ],
              ),
            ),
            SizedBox(height: 5.h),
            ElevatedButton(
              onPressed: () => Get.offAll(const SignInPage()),
              child: Text(
                "log_out".tr,
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
