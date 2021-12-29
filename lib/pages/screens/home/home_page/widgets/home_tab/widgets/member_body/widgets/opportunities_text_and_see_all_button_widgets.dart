import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/home/opportunity_search_or_my_fav_page/opportunity_or_my_fav_page.dart';
import 'package:syag/utils/colors.dart';

// Row Contains
// Text of Opportunities
// And
// See All Button
class PoortunitiesTextAndSeeMoreButtonWidget extends StatelessWidget {
  const PoortunitiesTextAndSeeMoreButtonWidget({
    Key? key,
    required this.isLatest,
  }) : super(key: key);

  // for
  // (changing the text)
  // AND
  // (chanaging the data
  // for latest opportunities
  // or nearby opportunities)

  final bool isLatest;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Latest Opportienty Text
          // Or
          // Around You Text
          FittedBox(
            child: Text(
              isLatest ? "latest_opportienty".tr : "around_you".tr,
              style: Get.theme.textTheme.headline4,
            ),
          ),
          // See All Button
          TextButton(
            //TODO: isLatest pass it to
            //todo: OpportunitiesOrMyFavorite
            //todo: for change the output data
            onPressed: () => Get.to(
              () => const OpportunitySearchOrMyFavoritePage(
                isFavorite: false,
              ),
            ),
            // See All
            child: Text(
              "see_all".tr,
              style: Get.theme.textTheme.headline4!.copyWith(
                color: faddenGreyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
