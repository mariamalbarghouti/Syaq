import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/ui/screens/auth/sign_up_screen/widgets/member_widgets/widgets/sign_up_member_input_entries_widget.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.w,
        right: 6.w,
        top: 1.h,
        bottom: 3.h,
      ),
      child: MemberSignUpInputEntriesWidget(),
    );
  }
}
