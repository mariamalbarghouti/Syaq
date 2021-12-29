import 'package:get/get.dart';
import 'package:syag/controllers/auth/select_role_controller/select_role_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/entity_sing_up_controller.dart';
import 'package:syag/pages/screens/auth/sign_up/controllers/logo_picker_controller.dart';

//Select Role Binding 
class SignUpBinding implements Bindings{
  const SignUpBinding();
  @override
  void dependencies() {
    // Initialize Select Role Controller
    Get.lazyPut(() => SelectRoleController());
    Get.lazyPut(() => LogoPickerController());
    Get.lazyPut(() => EntitySignUpController());
  }
}
