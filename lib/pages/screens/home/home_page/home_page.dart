import 'package:flutter/material.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/pages/screens/home/home_page/widgets/add_opportunity_tab/add_opportunity_tab.dart';
import 'package:syag/pages/screens/home/home_page/widgets/bottom_nav_bar.dart';
import 'package:syag/pages/screens/home/home_page/widgets/home_tab/home_tab.dart';
import 'package:syag/pages/screens/home/home_page/widgets/my_opportunities_tab/my_opportunities_tab.dart';
import 'package:syag/pages/screens/home/home_page/widgets/profile_tab/profile_tab.dart';

// Home Screen
class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  // static int pageIndex = 0;
  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  // For holding the index of
  // the pages which will be dissapears
  // inside the body of the scaffold
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: currentIndex,
        children: [
          // Home Page
          const HomeTapBar(),
          // My Opportunity Page "if member"
          // Or
          // Add Opportunity Page "if entity"
          (SelectRoleScreen.isMember ?? false)
              ? const MyOpportunityTab()
              : const AddOpportunityTab(),
          // Profile Page
          const ProfileTab(),
        ],
      ),
      // bottom nav bar
      // contains tab bar
      // for changing the page inside
      // the body
      bottomNavigationBar: BottomNavBarWidget(
        currentIndex: currentIndex,
        onPress: (int value) => setState(() {
          currentIndex = value;
        },),
      ),
    );
  }
}
