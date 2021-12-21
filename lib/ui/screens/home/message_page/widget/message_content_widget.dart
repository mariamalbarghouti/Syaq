import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Message Content
class MessageContentWidget extends StatelessWidget {
  const MessageContentWidget({
    Key? key,
    required this.isSender,
    required this.time,
    required this.messageBody,
  }) : super(key: key);

  final bool isSender;
  final String time;
  final String messageBody;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSender
          ? EdgeInsetsDirectional.only(top: 2.h, end: 5.w)
          : EdgeInsetsDirectional.only(top: 2.h, start: 5.w),
      child: Align(
        alignment: isSender
            ? AlignmentDirectional.centerEnd
            : AlignmentDirectional.centerStart,
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 70.w,minWidth: 20.w),
              child: Container(
                // height: 5.h,
                // width: 20.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.h,
                ),
                decoration: isSender
                    ? const BoxDecoration(
                        color: Color(0xFFF3F7F9),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.only(
                          // topEnd: Message
                          bottomEnd: Radius.circular(20),
                          bottomStart: Radius.circular(20),
                          topStart: Radius.circular(20),
                        ),
                      )
                    : BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color(0xFFF3F7F9),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),

                child: Wrap(children: [
                  Text(
                    messageBody,
                    style: isSender
                        ? Get.textTheme.bodyText1
                        : Get.textTheme.bodyText1!.copyWith(color: blackColor),
                    textAlign: TextAlign.justify,
                  ),
                ]),
              ),
            ),
            Text(
              time,
              style: Get.textTheme.headline3!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
