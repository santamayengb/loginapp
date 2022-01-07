import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:loginapp/logic/cubit/authflow_cubit.dart';
import 'package:loginapp/services/chopper_api.dart';

class MultiBlocProverWrapper extends StatelessWidget {
  const MultiBlocProverWrapper(
      {Key? key,
      required this.child,
      required this.apiService,
      required this.box})
      : super(key: key);

  final Widget child;
  final ApiService apiService;
  final Box box;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => AuthflowCubit(apiService: apiService, box: box),
      )
    ], child: child);
  }
}
