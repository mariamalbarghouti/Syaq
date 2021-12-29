import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syag/utils/colors.dart';
// Select Role Controller
class SelectRoleController extends GetxController{
  var isClicked=false;
  // Color color=whiteColor;
  
  void toggle({required String id}){
    isClicked=!isClicked;
    update([id]);
    //  if(isClicked.value) {
    //    return primaryColor ;
    //  } else {
    //    return whiteColor;
    //  }
  }

}

 // if (SelectRoleScreen.isMember == null) {
                //   Fluttertoast.showToast(
                //     msg: "choose_role".tr,
                //     toastLength: Toast.LENGTH_LONG,
                //     timeInSecForIosWeb: 1,
                //     backgroundColor: redColor,
                //     fontSize: 13.sp,
                //   );
                // } else {
                //   Get.to(
                //     () => SignUpScreen(
                //       isMember: SelectRoleScreen.isMember ?? true,
                //     ),
                //   );
                // }