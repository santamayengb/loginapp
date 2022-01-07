import 'package:flutter/material.dart';
import 'package:loginapp/app/widget/bloc_provider.wrapper.dart';
import 'package:loginapp/app/widget/repository.wrapper.dart';
import 'package:loginapp/authflow/authflow.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RepositoryProviderWrapper(
          child: MultiBlocProverWrapper(child: AuthFlow())),
    );
  }
}
