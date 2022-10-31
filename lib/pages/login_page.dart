import 'package:flutter/material.dart';
import 'package:navigation/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  final String email;

  const LoginPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            final route = MaterialPageRoute(
              builder: (_) => ProfilePage(),
              settings: RouteSettings(name: '/profile')
            );
            Navigator.push(context, route);
          },
          child: Text("Login Page $email)"),
        ),
      ),
    );
  }
}
