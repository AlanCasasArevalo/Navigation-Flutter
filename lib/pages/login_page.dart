import 'package:flutter/material.dart';
import 'package:navigation/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  final String email;

  const LoginPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => ProfilePage(),
              );
              Navigator.push(context, route);
            },
            child: Text("Login Page $email)"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) => Container(
                height: 70,
                color: Colors.primaries[index],
              ),
              itemCount: Colors.primaries.length,
            ),
          ),
        ],
      ),
    );
  }
}
