 import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:syag/pages/screens/home/message_page/dummy_data/dummy_model.dart';

List<MessageModel> message = [
    MessageModel(
      isSender: false,
      messageBody: "receiver_message".tr,
      time: "message_time".tr,
    ),
    MessageModel(
      isSender: true,
      messageBody: "message_sender_body".tr,
      time: "message_time".tr,
    ),
    MessageModel(
      isSender: false,
      messageBody: "receiver_message".tr,
      time: "message_time".tr,
    ),
    MessageModel(
      isSender: true,
      messageBody: "message_sender_body".tr,
      time: "message_time".tr,
    ),
  ];