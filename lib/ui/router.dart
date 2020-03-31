import 'package:flutter/material.dart';

import 'package:flt_base/ui/views/main_view.dart';
import 'package:flt_base/ui/views/login_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/':
        return MaterialPageRoute(builder: (_) => MainView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
