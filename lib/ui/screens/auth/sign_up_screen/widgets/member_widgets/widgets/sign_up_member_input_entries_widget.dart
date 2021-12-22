import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/home/utilities/custom_dialog_for_sign_up_member_radio_group.dart';
import 'package:syag/ui/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/ui/screens/utilities/password_and_confirm_password_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Member SignUp Input Entries Widget
// ignore: must_be_immutable
class MemberSignUpInputEntriesWidget extends HookWidget {
  String? _directoryPath;
  List<PlatformFile>? _paths;

  String? _extension;

  // final signUpAsMemberOrAddOpportunityDialog signUpAsMemberOrAddOpportunityDialog=signUpAsMemberOrAddOpportunityDialog();
  void _pickFiles() async {
    // _resetState();
    try {
      _directoryPath = null; 
      _paths = (await FilePicker.platform.pickFiles(
        type: FileType.video,
        // allowMultiple: _multiPick,
        onFileLoading: (FilePickerStatus status) => print(status),
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      // _logException('Unsupported operation' + e.toString());
    } catch (e) {
      // _logException(e.toString());
    }
    // if (!mounted) return;
    // setState(() {
    //   _isLoading = false;
    //   _fileName =
    //       _paths != null ? _paths!.map((e) => e.name).toString() : '...';
    //   _userAborted = _paths == null;
    // });
  }

  //   void _logException(String message) {
  //   print(message);
  //   _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
  //   _scaffoldMessengerKey.currentState?.showSnackBar(
  //     SnackBar(
  //       content: Text(message),
  //     ),
  //   );
  // }
  // final Future<DateTime?> datePicker =
  @override
  Widget build(BuildContext context) {
    // First Name Controller
    final firstNameController = useTextEditingController();

    // Middle Name Controller
    final middleNameController = useTextEditingController();

    // Last Name Controller
    final lastNameController = useTextEditingController();

    // Email Address Controller
    final emailAdressController = useTextEditingController();

    //   Mobile Number Controller
    final mobileNumberController = useTextEditingController();

    //   National ID Controller
    final nationalIdController = useTextEditingController();

    //   Date Of Birth ID Controller
    final dateOfBirthController = useTextEditingController();

    //   Gender Controller
    final genderController = useTextEditingController();

    //   Language Controller
    final languageController = useTextEditingController();

    //   School Name Controller
    final schoolNameController = useTextEditingController();

    //   Education Controller
    final educationController = useTextEditingController();

    //   Specialization Controller
    final specializationController = useTextEditingController();

    //   City Controller
    final cityController = useTextEditingController();

    //  Intended Major Controller
    final intendedMajorController = useTextEditingController();

    //   Gategories Controller
    final gategoriesController = useTextEditingController();

    //   Introductory Controller
    final introductionController = useTextEditingController();

    //   Join Controller
    final joinResonController = useTextEditingController();

    // //   Password Controller
    // final passwordController = useTextEditingController();

    // //  Confirm Controller
    // final confirmPasswordController = useTextEditingController();

    // // Toggle Obsecure Password
    // ValueNotifier<bool> isObscurePassword = useState(true);

    // // Toggle Obsecure Confirm Password
    // ValueNotifier<bool> isObscureConfirmPassword = useState(true);

    // show date and change the text of Date Of Birth
    Future<DateTime?> showDatePicker({required BuildContext context}) =>
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          minTime: DateTime(1910, 1, 1),
          maxTime: DateTime.now(),
          theme: DatePickerTheme(
            doneStyle: Get.textTheme.headline1!.copyWith(color: primaryColor),
            cancelStyle: Get.textTheme.headline2!,
            itemStyle: Get.textTheme.headline2!,
          ),
          onConfirm: (date) {
            dateOfBirthController.text =
                "${date.day}/${date.month}/${date.year}";
          },
          // TODO get local
          locale: LocaleType.en,
        );

    return Column(
      children: [
        // First Name
        TextField(
          controller: firstNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'first_name'.tr),
              ),
        ),

        // Middle Name
        TextField(
          controller: middleNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(
                  text: 'middle_name'.tr,
                ),
              ),
        ),

        // Last Name
        TextField(
          controller: lastNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'last_name'.tr),
              ),
        ),

        // Email Address
        TextField(
          controller: emailAdressController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'email'.tr),
              ),
        ),

        // Mobile Number
        TextField(
          controller: mobileNumberController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'mobile_number'.tr),
              ),
        ),

        // National ID
        TextField(
          controller: nationalIdController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          onSubmitted: (_) => showDatePicker(context: context),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'national_id'.tr),
              ),
        ),

        // Date Of Birth
        TextField(
          controller: dateOfBirthController,
          // keyboardType: TextInputType.datetime,
          // textInputAction: TextInputAction.next,
          style: inputStyle,
          readOnly: true,

          onTap: () => showDatePicker(context: context),
          // onSubmitted: (value) {},
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'date_of_birth'.tr),
              ),
        ),

        // Gender
        TextField(
          controller: genderController,
          readOnly: true,
          style: inputStyle,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: genderController,
            title: 'choose_gender'.tr,
            contentList: [
              'male'.tr,
              'female'.tr,
              'not_specified'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'gender'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),
              ),
        ),
        // ),

        // Language
        TextField(
          controller: languageController,
          readOnly: true,
          style: inputStyle,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: languageController,
            title: 'choose_language'.tr,
            contentList: [
              'ar'.tr,
              'en'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'language'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),
              ),
        ),

        // School Name
        TextField(
          controller: schoolNameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.none,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'school_name'.tr),
              ),
        ),

        // Educational Level
        TextField(
          controller: educationController,
          style: inputStyle,
          readOnly: true,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: educationController,
            title: 'choose_education_level'.tr,
            contentList: [
              'associate'.tr,
              'bachelor'.tr,
              'master'.tr,
              'doctoral'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'educational_level'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,

                  // ),
                ),
              ),
        ),

        // Specialization
        TextField(
          controller: specializationController,
          style: inputStyle,
          readOnly: true,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: specializationController,
            title: 'choose_specialization'.tr,
            contentList: [
              'cs'.tr,
              'management'.tr,
              'engineering'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'specialization'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),
              ),
        ),

        // City
        TextField(
          controller: cityController,
          style: inputStyle,
          readOnly: true,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: cityController,
            title: 'choose_city'.tr,
            contentList: [
              'jaddah'.tr,
              'riyadh'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'city'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),
              ),
        ),

        // Intended Major
        TextField(
          controller: intendedMajorController,
          style: inputStyle,
          readOnly: true,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: intendedMajorController,
            title: 'choose_intented_major'.tr,
            contentList: [
              'engineering'.tr,
              'biomedical'.tr,
              'social'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'intended_major'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),
              ),
        ),

        // Gategories
        TextField(
          controller: gategoriesController,
          readOnly: true,
          style: inputStyle,
          onTap: () => signUpAsMemberOrAddOpportunityDialog(
            context: context,
            controller: gategoriesController,
            title: 'choose_category'.tr,
            contentList: [
              'management'.tr,
              'biomedical'.tr,
              'social'.tr,
            ],
          ),
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'gategories'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25.sp,
                  color: faddenGreenColor,
                ),

                // ),
              ),
        ),
        // Introduction Video
        TextField(
          controller: introductionController,
          readOnly: true,
          style: inputStyle,
          onTap: () {
            _pickFiles();
            introductionController.text = 
                 _paths != null ? _paths!.map((e) => e.name).toString() : '...';
          },
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'introduction_video'.tr),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: faddenGreenColor),
                ),
                suffixIcon: Icon(
                  Icons.attach_file_rounded,
                  color: faddenGreyColor,
                  size: 25.sp,
                  // ),
                ),
              ),
        ),

        // Join Reason
        TextField(
          controller: joinResonController,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.next,
          style: inputStyle,
          decoration: const InputDecoration()
              .applyDefaults(Get.theme.inputDecorationTheme)
              .copyWith(
                label: LableWithStarWidget(text: 'join_reason'.tr),
                labelStyle: Get.theme.inputDecorationTheme.labelStyle!
                    .copyWith(color: blackColor),
              ),
        ),

        // // Password
        // TextField(
        //   controller: passwordController,
        //   obscureText: isObscurePassword.value,
        //   obscuringCharacter: '●',
        //   textInputAction: TextInputAction.next,
        //   keyboardType: TextInputType.visiblePassword,
        //   style: inputStyle,
        //   decoration: const InputDecoration()
        //       .applyDefaults(Get.theme.inputDecorationTheme)
        //       .copyWith(
        //         label: LableWithStarWidget(text: 'password'.tr),
        //         // Password Visibility Icon Button
        //         suffixIcon: IconButton(
        //           onPressed: () =>
        //               isObscurePassword.value = !isObscurePassword.value,
        //           icon: Icon(
        //             (isObscurePassword.value)
        //                 ? Icons.visibility_off
        //                 : Icons.visibility,
        //             color: faddenGreyColor,
        //             size: 21.sp,
        //           ),
        //         ),
        //       ),
        // ),

        // // Confirm Password
        // TextField(
        //   controller: confirmPasswordController,
        //   obscureText: isObscureConfirmPassword.value,
        //   obscuringCharacter: '●',
        //   textInputAction: TextInputAction.done,
        //   keyboardType: TextInputType.visiblePassword,
        //   style: inputStyle,
        //   decoration: const InputDecoration()
        //       .applyDefaults(Get.theme.inputDecorationTheme)
        //       .copyWith(
        //         label: LableWithStarWidget(text: 'confirm_password_text'.tr),
        //         // Password Visibility Icon Button
        //         suffixIcon: IconButton(
        //           onPressed: () => isObscureConfirmPassword.value =
        //               !isObscureConfirmPassword.value,
        //           icon: Icon(
        //             (isObscureConfirmPassword.value)
        //                 ? Icons.visibility_off
        //                 : Icons.visibility,
        //             color: faddenGreyColor,
        //             size: 21.sp,
        //           ),
        //         ),
        //       ),
        // ),
       const PasswordAndConfirmPasswordWidget(),
      ],
    );
  }
}
