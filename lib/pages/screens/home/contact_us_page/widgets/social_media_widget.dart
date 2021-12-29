import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

// Contact Us Via Social Medial Row
class ContactUsViaSocialMediaWidget extends StatelessWidget {
  const ContactUsViaSocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Gemail
        SvgPicture.asset(
          "assets/icons/gmail.svg",
          height: 10.w,
          width: 10.w,
        ),
        // Instagram
        SvgPicture.asset(
          "assets/icons/instagram.svg",
          height: 10.w,
          width: 10.w,
        ),
        // Facebook
        SvgPicture.asset(
          "assets/icons/facebook.svg",
          height: 10.w,
          width: 10.w,
        ),
        // Twitter
        SvgPicture.asset(
          "assets/icons/twitter.svg",
          height: 10.w,
          width: 10.w,
        ),
        // WhatsApp
        SvgPicture.asset(
          "assets/icons/whatsapp.svg",
          height: 10.w,
          width: 10.w,
        ),
        // Phone
        SvgPicture.asset(
          "assets/icons/phone.svg",
          height: 10.w,
          width: 10.w,
        ),
      ],
    );
  }
}
