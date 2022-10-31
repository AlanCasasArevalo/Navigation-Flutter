import 'package:flutter/material.dart';

import '../routes.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
    ).then((value) {
      Navigator.pushNamed(context, Routes.root);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.pink,
        ),
      ),
    );
  }
}
