import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'widgets/registration_input_widget.dart';

// Sign In Page
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sign_in".tr.toUpperCase())),
      body: Column(
        children: [
          // Logo
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: const Color(0xffF3F7F9),
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          // Entries and Buttons
        const  Expanded(
            flex: 2,
            child: RegistrationComponetsWidget(),
          ),
        ],
      ),
    );
  }
}
