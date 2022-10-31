import 'package:flutter/material.dart';
import 'package:navigation/pages/menu_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    '/': (context) => MenuPage(),
    Routes.counter: (context) => Scaffold(
          body: Center(
            child: Text('Counter'),
          ),
        ),
  };
}
