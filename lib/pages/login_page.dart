import 'package:flutter/material.dart';

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
        child: Text("Login Page $email)"),
      ),
    );
  }
}
