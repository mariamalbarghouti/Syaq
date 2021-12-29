import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// Select Role Controller
class EntitySignUpController extends GetxController {
  // Entity Name Controller
  late TextEditingController entityNameController;
  // Entity Type Controller
  late TextEditingController typeOfNameController;
  // DescriptionOrInfo Of The Entity Controller
  late TextEditingController descriptionOfTheEntityController;
  // Ministry Issued Certification Number Controller
  late TextEditingController ministryIssuedCertificationNumberController;
  // Email Controller
  late TextEditingController emailController;
  // Mobile Number Controller
  late TextEditingController mobileController;
  // Contact Name Controller
  late TextEditingController contactNameController;
  // Contact Mobile Num Controller
  late TextEditingController contactMobileNumController;
  // Website Url Controller
  late TextEditingController websiteUrlController;
  // Social Media Url Controllerr
  late TextEditingController socialMediaUrlController;
  // Password Controller
  late TextEditingController passwordController;
  // Confirm Password Controller
  late TextEditingController confirmPasswordController;

  // Toggle Obsecure Password
  var isObscurePassword = true.obs;

  // Toggle Obsecure Confirm Password
  var isObscureConfirmPassword = true.obs;

  @override
  void onInit() {
    entityNameController = TextEditingController();
    typeOfNameController = TextEditingController();
    descriptionOfTheEntityController = TextEditingController();
    ministryIssuedCertificationNumberController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    contactNameController = TextEditingController();
    contactMobileNumController = TextEditingController();
    websiteUrlController = TextEditingController();
    socialMediaUrlController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }
  @override
  void onClose() {
     entityNameController.dispose();
    typeOfNameController.dispose();
    descriptionOfTheEntityController.dispose();
    ministryIssuedCertificationNumberController.dispose();
    emailController.dispose();
    mobileController.dispose();
    contactNameController.dispose();
    contactMobileNumController.dispose();
    websiteUrlController.dispose();
    socialMediaUrlController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}

// entity_logo_picker_widget