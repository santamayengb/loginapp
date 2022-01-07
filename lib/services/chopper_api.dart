import 'package:chopper/chopper.dart';
import 'package:loginapp/model/model.dart';

part 'chopper_api.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create({ChopperClient? client}) => _$ApiService(client);

  @Post(path: '/auth/local')
  Future<Response<LoginResponseModel>> login({
    @Body() required Map<String, dynamic> body,
  });
}
