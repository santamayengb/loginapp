import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:loginapp/services/chopper_api.dart';
import 'package:loginapp/services/chopper_client.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

typedef BootStrapBuilder = FutureOr<Widget> Function(
  // add new Type here, which is to be passed at App
  // AppRouter router,
  ApiService apiService,
  Box box,
);

Future<void> bootstrap({required BootStrapBuilder builder}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // final _appRouter = AppRouter();
  final api = chopper.getService<ApiService>();
  var path = Directory.current.path;
  Hive.init(path);
  final box = await Hive.openBox("auth");

  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(await builder(
          // _appRouter,

          api,
          box,
        )),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
