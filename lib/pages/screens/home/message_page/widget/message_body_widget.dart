import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/pages/screens/home/message_page/dummy_data/dummy_data.dart';
import 'package:syag/pages/screens/home/message_page/dummy_data/dummy_model.dart';
import 'package:syag/pages/screens/home/message_page/widget/message_content_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';

// Message Body
class MessageBodyWidget extends StatefulWidget {
  const MessageBodyWidget({Key? key}) : super(key: key);

  @override
  State<MessageBodyWidget> createState() => _MessageBodyWidgetState();
}

class _MessageBodyWidgetState extends State<MessageBodyWidget> {
  // Message Controller
  final message_controller = TextEditingController();

  @override
  void dispose() {
    message_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Message List
        Expanded(
          child: ListView.builder(
            itemCount: message.length,
            itemBuilder: (context, index) => MessageContentWidget(
              isSender: message[index].isSender,
              messageBody: message[index].messageBody,
              time: message[index].time,
            ),
          ),
        ),
        // Sending Message Design
        Container(
          margin: EdgeInsets.all(3.h),
          decoration: BoxDecoration(
            color: const Color(0xFFF3F7F9),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
          ),
          // Message Text Field
          child: TextField(
            controller: message_controller,
            onChanged: (value) {},
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.none,
            style: inputStyle,
            decoration: const InputDecoration()
                .applyDefaults(Get.theme.inputDecorationTheme)
                .copyWith(
                  hintText: 'type_a_message'.tr,
                  hintStyle: const TextStyle(
                    color: faddenGreyColor,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(2.5.w),
                  suffixIcon: IconButton(
                    onPressed: () => setState(
                      () {
                        message.add(
                          MessageModel(
                            isSender: true,
                            time: "message_time".tr,
                            messageBody: message_controller.text,
                          ),
                        );
                      },
                    ),
                    // Send Message Button
                    icon: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 0.2.w,
                          color: shadowColor,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: shadowColor,
                      ),
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
