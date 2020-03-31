import 'package:flt_base/ui/router.dart';
import 'package:flutter/material.dart';

import 'package:flt_base/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLT Base Project',
      theme: ThemeData(),
      initialRoute: 'login',
      onGenerateRoute: Router.generateRoute,
    );
  }
}