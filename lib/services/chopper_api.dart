import 'package:chopper/chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create({ChopperClient? client}) => _$ApiService(client);
}
