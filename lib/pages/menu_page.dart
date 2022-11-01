import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../routes.dart';
import 'login_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap(BuildContext context) {
    final faker = Faker();
    final email = faker.internet.email();
    Navigator.pushNamed(
      context,
      Routes.login,
      arguments: email,
    );
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
