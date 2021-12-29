import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/entity_value_object/entity_logo_value_object.dart';

// Select Role Controller
class LogoPickerController extends GetxController {
  
  // Rx<bool> imag=true.obs;
  // File? image;
   EntityLogo logo =EntityLogo(logo: "");

  Future<void> logoPick() async {
  print("${logo.value}");
    ImagePicker imagePicker = ImagePicker();
    XFile? img = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );
    logo= EntityLogo(logo: img!.path);
    update();
  }
}

