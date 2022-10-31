import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/menu_page.dart';
import 'pages/counter_page.dart';
import 'routes.dart';

Object? getArguments(context) {
  return ModalRoute.of(context)?.settings.arguments;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.root: (context) => MenuPage(),
    Routes.counter: (context) => CounterPage(),
    Routes.login: (context) {
      final email = getArguments(context) as String;
      return LoginPage(email: email);
    }
  };
}
