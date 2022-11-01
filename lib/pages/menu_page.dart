import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/color_picker.dart';
import '../routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class PageData {
  final String name;
  final String label;

  PageData({required this.name, required this.label});
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  final _pages = <PageData>[
    PageData(name: Routes.login, label: "Go to Login"),
    PageData(name: Routes.counter, label: "Go to Counter"),
    PageData(name: Routes.color_picker, label: "Go to Color picker"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final page = _pages[index];
            return ListTile(
              title: Text(page.label),
              onTap: () {
                Navigator.pushNamed(context, page.name);
              },
            );
          },
          itemCount: _pages.length,
        ),
      ),
    );
  }
}
