import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/ui/screens/home/opportinty_details.dart/member_opportienty_details/member_opportienty_details_page.dart';
import 'package:syag/ui/screens/home/opportunity_search_or_my_fav_page/widgets/search_filter_dialog.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

class OpportunitiesSearchOrMyFavoriteBody extends StatelessWidget {
  const OpportunitiesSearchOrMyFavoriteBody({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);

  final bool? isFavorite;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // Row of Filter Search
        (isFavorite == null)
            ? SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Search Input
                    Expanded(
                      flex: 6,
                      child: Container(
                        margin: EdgeInsets.all(3.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F7F9),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            // update search term
                            SelectRoleScreen.isMember = true;
                          },
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.none,
                          style: inputStyle,
                          decoration: const InputDecoration()
                              .applyDefaults(Get.theme.inputDecorationTheme)
                              .copyWith(
                                hintText: 'search'.tr,
                                hintStyle: const TextStyle(
                                  color: faddenGreyColor,
                                ),
                                // border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(2.5.w),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        style: BorderStyle.solid,
                                        width: 0.2.w,
                                        color: shadowColor,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward_rounded,
                                      color: shadowColor,
                                    ),
                                  ),
                                ),
                              ),
                        ),
                      ),
                    ),
                    // Filter Icon
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsetsDirectional.only(end: 2.h),
                        child: IconButton(
                          onPressed: () => searchFilterDialog(context: context),
                          padding: EdgeInsets.zero,
                          icon: SvgPicture.asset(
                            "assets/icons/filter.svg",
                            fit: BoxFit.fill,
                            // height: 3.h,
                            // width: 3.w,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : SliverPadding(padding: EdgeInsets.only(top: 2.h)),
        //
        SliverPadding(
          padding: EdgeInsets.all(4.w),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.h,
            mainAxisSpacing: 2.h,
            childAspectRatio: 1 / 0.8,
            children: List.generate(
              10,
              (index) {
                return InkWell(
                  onTap: () => Get.to(
                    () => const MemberOpportientiesDetailsPage(
                      isMyOpportunity: false,
                    ),
                  ),
                  child: Material(
                    // padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      // side: ,

                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    type: MaterialType.card,
                    color: whiteColor,
                    elevation: 5,
                    // clipBehavior: Clip.antiAliasWithSaveLayer,

                    shadowColor: shadowColor.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                foregroundColor: blackColor,
                                child: ClipOval(
                                  child: Image.asset(
                                      'assets/images/meta-logo.png'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 4.w),
                                child: Text(
                                  "company_name".tr,
                                  // textAlign: TextAlign.end,
                                  style: Get.textTheme.headline3!
                                      .copyWith(color: faddenGreyColor),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerStart,

                            // heightFactor: 0.3.h,
                            child: Padding(
                              padding: EdgeInsets.all(1.w),
                              child: Text(
                                "opportunity_title".tr,
                                style: Get.textTheme.headline4,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: faddenGreyColor,
                                  size: 13.sp,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 2.w),
                                  child: Text(
                                    "date".tr,
                                    style: Get.textTheme.headline3!.copyWith(
                                      color: faddenGreyColor,
                                      fontSize: 8.5.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: faddenGreyColor,
                                  size: 15.sp,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 2.w),
                                  child: Text(
                                    "location".tr,
                                    style: Get.textTheme.headline3!.copyWith(
                                      color: faddenGreyColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
