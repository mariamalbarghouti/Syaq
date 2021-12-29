import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/contact_us_page/widgets/contact_us_body_widget.dart';
import 'package:syag/utils/colors.dart';

// Contact Us
class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("contact_us".tr.toUpperCase()),
        // Back arrow
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
      body:const ContactUsBodyWidget(),
    );
  }
}
