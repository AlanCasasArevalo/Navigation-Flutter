import 'package:flutter/material.dart';
import '../routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class PageData {
  final String name;
  final String label;
  final Object? arguments;

  PageData({required this.name, required this.label, this.arguments});
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  final _pages = <PageData>[
    PageData(
        name: Routes.login, label: "Go to Login", arguments: 'test@test.com'),
    PageData(name: Routes.counter, label: "Go to Counter"),
    PageData(name: Routes.color_picker, label: "Go to Color picker"),
    PageData(name: Routes.dialog, label: "Go to Color Dialog"),
    PageData(name: Routes.will_pop_scope, label: "Go to Will Pop Scope"),
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
                Navigator.pushNamed(
                  context,
                  page.name,
                  arguments: page.arguments
                );
              },
            );
          },
          itemCount: _pages.length,
        ),
      ),
    );
  }
}
