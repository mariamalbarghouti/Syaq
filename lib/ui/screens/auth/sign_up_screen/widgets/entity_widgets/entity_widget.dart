import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/sign_up_screen/widgets/entity_widgets/sign_up_entity_input_entries_widget.dart';
import 'package:syag/ui/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';

class EntityWidget extends HookWidget {
  const EntityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImagePicker imagePicker = ImagePicker();
    // ValueNotifier<bool>
    ValueNotifier<File?> image = useState(null);
    return Padding(
      padding: EdgeInsets.only(
        left: 6.w,
        right: 6.w,
        top: 5.h,
        bottom: 3.h,
      ),
      child: Center(
        child: image.value != null
            ? CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.file(
                    image.value!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            : Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 0.2.w,
                        color: faddenGreenColor.withAlpha(100),
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.photo_library_rounded,
                        color: faddenGreenColor,
                      ),
                      onPressed: () async {
                        var source = ImageSource.gallery;
                        XFile? img = await imagePicker.pickImage(
                          source: source,
                          imageQuality: 85,
                        );
                        image.value = File(img!.path);
                      },
                    ),
                  ),
                  LableWithStarWidget(
                    text: "add_entity_logo".tr,
                    style: Get.theme.textTheme.headline2!
                        .copyWith(color: faddenGreyColor),
                  ),
                  // Entity Entries
                  const EntitySignUpInputEntriesWidget(),
                ],
              ),
      ),
    );
  }
}
