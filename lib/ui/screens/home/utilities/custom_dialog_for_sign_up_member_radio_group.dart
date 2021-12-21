import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

signUpAsMemberOrAddOpportunityDialog({
  required BuildContext context,
  required String title,
  required List<String> contentList,
  required controller,
}) {
  String valueGroup = contentList.first;
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: Get.textTheme.headline1!
            .copyWith(color: primaryColor, fontSize: 15.sp),
      ),
      content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: contentList
                .map(
                  (e) => RadioListTile<String>(
                    value: e,
                    groupValue: valueGroup,
                    onChanged: (val) => setState(() => valueGroup = val!),
                    title: Text(
                      e,
                      style: Get.textTheme.headline2,
                    ),
                    dense: true,
                    activeColor: primaryColor,
                    contentPadding: EdgeInsets.zero,
                    autofocus: true,
                  ),
                )
                .toList(),
          ),
        );
      }),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: Text(
            'cancel'.tr,
            style: Get.textTheme.headline1!
                .copyWith(color: faddenGreyColor, fontSize: 14.sp),
          ),
        ),
        TextButton(
          onPressed: () {
            controller.text = valueGroup;

            Navigator.pop(context, 'OK');
          },
          child: Text(
            'ok'.tr,
            style: Get.textTheme.headline2!
                .copyWith(color: primaryColor, fontSize: 14.sp),
          ),
        ),
      ],
    ),

    // useSafeArea: false
  );
}
// }
