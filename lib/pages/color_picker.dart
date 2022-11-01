import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: ListView.builder(
      itemCount: Colors.primaries.length,
      itemBuilder: (context, index) {
        final color = Colors.primaries[index];

        return GestureDetector(
          child: Container(
            height: 70,
            color: color,
          ),
          onTap: () {
            Navigator.pop(context, color);
          },
        );
      },
    ),);
  }
}
