import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.popUntil(context, (route) => false);
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.popUntil(context, (route) {
              final name = route.settings.name;
              print("❌ ${route.settings.name}");
              return name == "/";
            });
          },
          child: Text("LOG OUT"),
        ),
      ),
    );
  }
}
