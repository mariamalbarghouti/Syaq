import 'package:get/get_connect/connect.dart';

abstract class AcceptConditionsRepo extends GetConnect {
   Future<Response> getConditions();
}