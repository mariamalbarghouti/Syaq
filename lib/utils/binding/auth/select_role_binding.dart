import 'package:get/get.dart';
import 'package:syag/controllers/auth/select_role_controller/select_role_controller.dart';

//Select Role Binding 
class SelectRoleBinding implements Bindings{
  const SelectRoleBinding();
  @override
  void dependencies() {
    // Initialize Select Role Controller
    Get.lazyPut(() => SelectRoleController());
  }
}
