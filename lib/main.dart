import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation/app_routes.dart';
import 'pages/menu_page.dart';
import 'routes.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Si usamos nombres de rutas y definimos correctamente home '/' no hace falta poner home en la app principal
      //home: MenuPage(),
      routes: appRoutes,
      initialRoute: Routes.splash,
    );
  }
}
