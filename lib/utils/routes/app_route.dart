import 'package:get/get.dart';
import 'package:syag/pages/screens/auth/select_role_screen/select_role_screen.dart';
import 'package:syag/pages/screens/auth/sign_up/views/sign_up_widget.dart';
import 'package:syag/utils/binding/auth/select_role_binding.dart';
import 'package:syag/pages/screens/auth/sign_up/bindings/sign_up_binding.dart';
import 'package:syag/utils/routes/app_route_links.dart';

// Application Route
class AppRoute {
  static List<GetPage> pages = [
    // Select Role Page
    GetPage(
      name: AppRouteLinks.selectRole,
      page: () => const SelectRoleScreen(),
      binding: const SelectRoleBinding(),
   
    ),
    // TODO make it inside children
        GetPage(
          name: AppRouteLinks.signUp,
          page: () => const SignUpScreen(
            isMember: false,
          ),
          binding: const SignUpBinding(),
        )
  ];
}
