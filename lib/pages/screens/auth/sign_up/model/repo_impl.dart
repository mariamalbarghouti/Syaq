import 'package:get/get_connect/http/src/response/response.dart';
import 'package:syag/pages/screens/auth/sign_up/model/repo.dart';

class AcceptConditionsRepoImpl extends AcceptConditionsRepo{
  @override
  Future<Response> getConditions()=>get('https://klm.cdy.mybluehost.me/syaq/api/entity/terms');
 }
