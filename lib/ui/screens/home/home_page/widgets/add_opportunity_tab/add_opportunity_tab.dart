import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/ui/screens/home/home_page/widgets/add_opportunity_tab/widgets/add_opportunity_body_widget.dart';

// Add Opportunity
// "ONLY FOR ENTITY"
class AddOpportunityTab extends StatelessWidget {
  const AddOpportunityTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("add_opportunity".tr.toUpperCase()),
      ),
      // Body
      body: const AddOpportunityBodyWidget(),
    );
  }
}
