// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<LoginResponseModel>> login(
      {required Map<String, dynamic> body}) {
    final $url = '/auth/local';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginResponseModel, LoginResponseModel>($request);
  }
}
