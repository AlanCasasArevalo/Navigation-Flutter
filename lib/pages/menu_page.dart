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
  final void Function(Object?)? onResult;

  PageData({
    required this.name,
    required this.label,
    this.arguments,
    this.onResult,
  });
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  late final List<PageData> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      PageData(
          name: Routes.login, label: "Go to Login", arguments: 'test@test.com'),
      PageData(name: Routes.counter, label: "Go to Counter"),
      PageData(
          name: Routes.color_picker,
          label: "Go to Color picker",
          onResult: (result) {
            if (result != null && result is Color) {
              _color = result;
              setState(() {});
            }
          }),
      PageData(name: Routes.dialog, label: "Go to Color Dialog"),
      PageData(name: Routes.will_pop_scope, label: "Go to Will Pop Scope"),
    ];
  }

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
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  page.name,
                  arguments: page.arguments,
                );
                if (page.onResult != null) {
                  page.onResult!(result);
                }
              },
            );
          },
          itemCount: _pages.length,
        ),
      ),
    );
  }
}
