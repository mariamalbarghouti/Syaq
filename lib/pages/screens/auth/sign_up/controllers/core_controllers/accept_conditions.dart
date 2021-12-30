import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/conditions_value_object.dart';
import 'package:syag/pages/screens/auth/sign_up/services/repo_impl.dart';
import 'package:syag/utils/colors.dart';

// Accept Conditions Controller
class AcceptConditionsController extends GetxController
    with StateMixin<TermsAndConditions> {
  final AcceptConditionsRepoImpl acceptConditionsRepoImpl;
  AcceptConditionsController(this.acceptConditionsRepoImpl);
  // For CheckBox Checker
  Rx<bool> isTermsAccepted=false.obs;

  // Initializing the controller
  // if the server has error
  // return an error
  // else return the condition message
  @override
  void onInit() async {
    await acceptConditionsRepoImpl.getConditions().then(
          (value) => value.fold(
            (l) => change(null, status: RxStatus.error(l.msg)),
            (r) => change(r, status: RxStatus.success()),
          ),
        );
    super.onInit();
  }

  // Reading Terms And Conditions
  readTermsAndConditions() {
    return Get.dialog(
      obx(
        // If Data is Ok_200 
        (state) => AlertDialog(
          title: Text("accept_conditions".tr,
              textAlign: TextAlign.center,
              style: Get.textTheme.headline2!.copyWith(color: primaryColor)),
          content: Text(
            state!.getOrCrash(),
            textAlign: TextAlign.justify,
            style: Get.textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ), 
        // On Error Happened
        onError: (error) => Center(
          child: Text(
            "$error",
            style: Get.textTheme.headline1!.copyWith(color: whiteColor),
          ),
        ),
      ),
    );
  }
}
