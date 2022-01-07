import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:loginapp/model/login_respone.model.dart';
import 'package:loginapp/model/user_login.model.dart';
import 'package:loginapp/services/chopper_api.dart';

part 'authflow_state.dart';

class AuthflowCubit extends Cubit<AuthflowState> {
  AuthflowCubit({required this.box, required this.apiService})
      : super(const AuthflowState(status: Status.unauthenticate));

  final ApiService apiService;
  final Box box;

  login(UserLoginModel userLoginModel) async {
    final d = await apiService.login(body: userLoginModel.toJson());
    if (d.body != null) {
      final jwt = await box.add(d.body!.jwt);
      log(jwt.toString());
    } else {
      final error = d.error;
      log(error.toString());
    }
  }

  logout() {
    emit(const AuthflowState(status: Status.unauthenticate));
  }
}
