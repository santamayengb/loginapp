import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:loginapp/model/login_respone.model.dart';

part 'authflow_state.dart';

class AuthflowCubit extends Cubit<AuthflowState> {
  AuthflowCubit() : super(const AuthflowState(status: Status.unauthenticate));
}
