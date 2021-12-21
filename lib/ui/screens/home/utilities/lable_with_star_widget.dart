import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syag/utils/colors.dart';

// Lable With Star Widget
class LableWithStarWidget extends StatelessWidget {
  const LableWithStarWidget({Key? key, required this.text,this.style}) : super(key: key);
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style:style?? Get.theme.textTheme.headline2,
        children: const [
          TextSpan(
            text: '*',
            style: TextStyle(
              color:redColor,
            ),
          ),
        ],
      ),
    );
  }
}
