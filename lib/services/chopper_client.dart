import 'package:chopper/chopper.dart';
import 'package:loginapp/model/login_respone.model.dart';
import 'package:loginapp/services/chopper_api.dart';

import 'generic_json_convertor.dart';

final chopper = ChopperClient(
  baseUrl: "https://strapi-tip5b.ondigitalocean.app/api",
  services: [
    ApiService.create(),
  ],
  converter: GenericJsonConvertor({
    LoginResponseModel: (json) => LoginResponseModel.fromJson(json),
  }),
);
