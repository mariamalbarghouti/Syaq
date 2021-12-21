import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/opportunity_search_or_my_fav_page/widgets/opportunities_or_my_fav_body.dart';
import 'package:syag/utils/colors.dart';

// Opportunies Search Page
// Or
// My Favorite Page
class OpportunitySearchOrMyFavoritePage extends StatelessWidget {
  const OpportunitySearchOrMyFavoritePage({
    Key? key,
   required this.isFavorite,
  }) : super(key: key);
  final  bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text(
          (isFavorite)
              ? "my_favorite".tr.toUpperCase()
              : "opportunities".tr.toUpperCase(),
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
      // Body
      body: OpportunitiesSearchOrMyFavoriteBody(
        isFavorite: isFavorite,
      ),
    );
  }
}
