import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/logic/cubit/authflow_cubit.dart';
import 'package:loginapp/model/user_login.model.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthflowCubit>().state;
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.status.toString()),
              Form(
                  child: TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  labelText: 'username',
                ),
              )),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  labelText: 'password',
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthflowCubit>().login(UserLoginModel(
                        identifier: username.text, password: password.text));
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text("LOGIN")),
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthflowCubit>().logout();
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text("LOGOUT"))
            ],
          ),
        ),
      ),
    );
  }
}
