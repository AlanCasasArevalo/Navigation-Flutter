import 'package:device_preview/device_preview.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/routes.dart';

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
      home: MenuPage(),
      routes: {
        Routes.counter: (context) => Scaffold(
              body: Center(
                child: Text('Counter'),
              ),
            )
      },
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap(BuildContext context) {
    final faker = Faker();
    final email = faker.internet.email();
    // Haciendo este cambio, se pasa el parametro email y aunque hagamos un hot reload no se cambia el email en la pantalla
    final route = MaterialPageRoute(
      builder: (_) {
        print("🤦🏻‍♂️");
        return LoginPage(email: email);
      },
    );
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListTile(
          title: Text("Go to Counter"),
          onTap: () {
           Navigator.pushNamed(context, Routes.counter);
          },
        ),
      ),
    );
  }
}
