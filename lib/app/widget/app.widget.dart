import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:loginapp/Onboarding/login.page.dart';
import 'package:loginapp/app/widget/bloc_provider.wrapper.dart';
import 'package:loginapp/app/widget/repository.wrapper.dart';
import 'package:loginapp/services/chopper_api.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.api, required this.box})
      : super(key: key);

  final ApiService api;
  final Box box;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryWrapper(
          apiService: api,
          child: MultiBlocProverWrapper(
              apiService: api, box: box, child: LoginPage())),
    );
  }
}
