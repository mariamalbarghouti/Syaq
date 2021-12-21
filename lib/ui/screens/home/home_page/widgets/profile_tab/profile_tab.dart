import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/home/home_page/widgets/profile_tab/widgets/profile_body_widget.dart';

// Profile Entity
class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("profile".tr.toUpperCase()),
      ),
      // Body
      body: const ProfileBodyWidget(),
    );
  }
}
