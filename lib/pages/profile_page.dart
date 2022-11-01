import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';

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
            Navigator.pushNamed(context, Routes.initialRoute);
          },
          child: Text("LOG OUT"),
        ),
      ),
    );
  }
}
