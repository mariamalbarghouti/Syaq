// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import 'package:syag/ui/screens/auth/sign_up_screen/sign_up_widget.dart';
// import 'package:syag/utils/colors.dart';

// class SelectRoleScreen extends StatefulWidget {
//   const SelectRoleScreen({ Key? key }) : super(key: key);

//   @override
//   State<SelectRoleScreen> createState() => _SelectRoleScreenState();
// }

// class _SelectRoleScreenState extends State<SelectRoleScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.symmetric(horizontal: 2.w),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Member
//                 Expanded(
//                   flex: 1,
//                   // Members.svg
//                   child: InkWell(
//                     onTap: () {
                      
//                        SelectRoleScreen.isMember = true;
//                        setState(() {
                         
//                        });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 0.5.h, horizontal: 0.2.h),
//                       decoration: BoxDecoration(
//                         color: (SelectRoleScreen.isMember == true)
//                             ? primaryColor
//                             : whiteColor,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(3.w),
//                           topRight: Radius.circular(3.w),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           SvgPicture.asset(
//                             "assets/images/members.svg",
//                             width: 45.w,
//                           ),
//                           Material(
//                             // shadowColor: shadowColor,
//                             shadowColor: shadowColor.withOpacity(0.5),
//                             // elevation: 0.9,
//                             elevation: 5,
//                             child: Container(
//                               color: whiteColor,
//                               // width: 50.w,
//                               // width: double.infinity,
//                               width: 45.w,

//                               height: 5.h,
//                               child: Text(
//                                 "members".tr,
//                                 textAlign: TextAlign.center,
//                                 style: Get.textTheme.headline2,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 // Entity
//                 Expanded(
//                   flex: 1,
//                   child: InkWell(
//                     onTap: () {
//                        SelectRoleScreen.isMember = false;
//                          setState(() {
                         
//                        });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 0.5.h, horizontal: 0.2.h),
//                       decoration: BoxDecoration(
//                         color: (SelectRoleScreen.isMember == false)
//                             ? primaryColor
//                             : whiteColor,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(3.w),
//                           topRight: Radius.circular(3.w),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           SvgPicture.asset(
//                             "assets/images/entity.svg",
//                             // width: 50.w,
//                             width: 45.w,
//                           ),
//                           Material(
//                             // shadowColor: shadowColor,
//                             shadowColor: shadowColor.withOpacity(0.5),
//                             // elevation: 0.9,
//                             elevation: 5,
//                             child: Container(
//                               color: whiteColor,
//                               // width: 50.w,
//                               width: 45.w,

//                               height: 5.h,
//                               child: Text(
//                                 "entity".tr,
//                                 textAlign: TextAlign.center,
//                                 style: Get.textTheme.headline2,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // Space
//             SizedBox(
//               height: 9.h,
//             ),
//             // Next Button
//             ElevatedButton(
//               onPressed: () {
//                 if (SelectRoleScreen.isMember == null) {
//                   Fluttertoast.showToast(
//                     msg: "choose_role".tr,
//                     toastLength: Toast.LENGTH_LONG,
//                     timeInSecForIosWeb: 1,
//                     backgroundColor: redColor,
//                     fontSize: 13.sp,
//                   );
//                 } else {
//                   Get.to(
//                     () => SignUpScreen(
//                       isMember: SelectRoleScreen.isMember??true,
//                     ),
//                   );
//                 }
//               },
//               child: Text("next".tr,
//                   style: Get.textTheme.headline1!.copyWith(color: whiteColor)),
//             ),
//           ],
//         ),
//       );
//   }
// }