import 'package:dartz/dartz.dart';
import 'package:get/get_connect/connect.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/failures/entity_failures.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/conditions_value_object.dart';

abstract class AcceptConditionsRepo extends GetConnect {
  //  Future<Either<EntityFailures,TermsAndConditions>>
  //  Future<Response> getConditions();
 Future< Either<EntityFailures, TermsAndConditions>> getConditions();
}