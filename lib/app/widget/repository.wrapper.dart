import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/services/chopper_api.dart';
import 'package:loginapp/services/repo/login.repo.dart';

class RepositoryWrapper extends StatelessWidget {
  const RepositoryWrapper(
      {Key? key, required this.child, required this.apiService})
      : super(key: key);

  final Widget child;
  final ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LoginRepository(apiService: apiService),
        )
      ],
      child: child,
    );
  }
}
