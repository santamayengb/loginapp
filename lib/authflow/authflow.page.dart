import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/logic/cubit/authflow_cubit.dart';

class AuthFlow extends StatefulWidget {
  const AuthFlow({Key? key}) : super(key: key);

  @override
  State<AuthFlow> createState() => _AuthFlowState();
}

class _AuthFlowState extends State<AuthFlow> {
  @override
  Widget build(BuildContext context) {
    context.watch<AuthflowCubit>().state.status;
    return Scaffold(
      body: Container(),
    );
  }
}
