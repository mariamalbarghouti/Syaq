import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/failures/entity_failures.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/repositories/services_repo.dart';
import 'package:syag/pages/screens/auth/sign_up/domain/value_object/core/conditions_value_object.dart';
import 'package:syag/pages/screens/auth/sign_up/model/terms_and_conditions_dto.dart';
import 'package:syag/utils/services_urls/services_url.dart';

// Accept Conditions Repo Implememntation
class AcceptConditionsRepoImpl extends GetConnect
    implements AcceptConditionsRepo {
  @override
  Future<Either<EntityFailures, TermsAndConditions>> getConditions() async {
    //  connect the server with response
    final response = await get(ServicesURLs.termsUrl);
    if (response.status.isOk && response.body["code"] == HttpStatus.ok) {
      TermsAndConditionsDTO terms =
          TermsAndConditionsDTO(terms: response.body["data"]["terms"]);
      return right(terms.toDomain());
    } else {
      return left(EntityFailures.unexpected(msg: "unexpeted_error".tr));
    }
  }
}
