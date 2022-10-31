import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../routes.dart';
import 'login_page.dart';

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
        child: ListView(
          children: [
            ListTile(
              title: Text("Go to Login"),
              onTap: () {
                _onTap(context);
              },
            ),
            ListTile(
              title: Text("Go to Counter"),
              onTap: () {
                Navigator.pushNamed(context, Routes.counter);
              },
            ),
          ],
        ),
      ),
    );
  }
}
