part of 'authflow_cubit.dart';

enum Status {
  unauthenticate,
  authenticated,
}

class AuthflowState extends Equatable {
  const AuthflowState({this.loginResponseModel, required this.status});

  final Status status;
  final LoginResponseModel? loginResponseModel;

  @override
  List<Object> get props => [];
}
