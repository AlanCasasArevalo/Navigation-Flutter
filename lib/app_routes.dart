import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/menu_page.dart';
import 'package:navigation/pages/splash_page.dart';
import 'pages/counter_page.dart';
import 'routes.dart';

T getArguments<T>(context) {
  return ModalRoute.of(context)?.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => SplashPage(),
    Routes.home: (context) => MenuPage(),
    Routes.counter: (context) => CounterPage(),
    Routes.login: (context) {
      final email = getArguments<String>(context);
      return LoginPage(email: email);
    }
  };
}
