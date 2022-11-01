import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/color_picker.dart';
import '../routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

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
      appBar: AppBar(
        backgroundColor: _color,
      ),
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
            ListTile(
              title: Text("Go to Color picker"),
              onTap: () async {
                final route = MaterialPageRoute<Color>(
                  builder: (_) => ColorPicker(),
                );
                final result = await Navigator.push(context, route);
                if (result != null) {
                  _color = result;
                  setState(() {});
                }
                print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}
