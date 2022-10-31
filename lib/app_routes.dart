import 'package:flutter/material.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.counter: (context) => Scaffold(
            body: Center(
              child: Text('Counter'),
            ),
          ),
    };
