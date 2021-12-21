import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/about_us_or_terms_and_conditions_page/widgets/about_us_or_terms_body.dart';
import 'package:syag/utils/colors.dart';

class AboutUsOrTermsAndConditionsPage extends StatelessWidget {
  const AboutUsOrTermsAndConditionsPage({
    Key? key,
    required this.isAboutUs,
  }) : super(key: key);
  final bool isAboutUs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isAboutUs
              ? "about_us".tr.toUpperCase()
              : "terms_and_conditions".tr.toUpperCase(),
        ),
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
      body: const AboutUsOrTermsAndConditionsBody(),
    );
  }
}
