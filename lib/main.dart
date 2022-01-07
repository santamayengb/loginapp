import 'package:flutter/material.dart';
import 'package:loginapp/bootstrap.dart';

import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(
    builder: (api, box) {
      return MyApp(
        api: api,
        box: box,
      );
    },
  );
}
