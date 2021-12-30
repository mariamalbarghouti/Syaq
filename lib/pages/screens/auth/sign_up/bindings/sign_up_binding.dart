import 'package:get/get.dart';
import 'package:syag/controllers/auth/select_role_controller/select_role_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/core_controllers/accept_conditions.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/entity_controllers/entity_sing_up_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/entity_controllers/logo_picker_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/services/repo_impl.dart';

//Select Role Binding
class SignUpBinding implements Bindings {
  const SignUpBinding();
  @override
  void dependencies() {
    // Initialize Select Role Controller
    Get.lazyPut(() => SelectRoleController());
    Get.lazyPut(() => LogoPickerController());
    Get.lazyPut(() => EntitySignUpController());
    // TODO make it selef find the implementation
    Get.lazyPut(() => AcceptConditionsRepoImpl());
    Get.lazyPut(
        () => AcceptConditionsController(Get.find<AcceptConditionsRepoImpl>()));
  }
}
