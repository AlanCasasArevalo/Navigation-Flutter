import 'package:flutter/material.dart';

class WillPopScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Con este widget WillPopScope lo que hacemos "sobreescribir" el comportamiento del boton de retroceso nativo de android
    // con el onWillPop lo que hacemos es devolver un valor FALSO si no queremos que se pueda usar el boton de regreso nativo,
    // y un TRUE en caso de que si queramos permitir el retroceso con el boton nativo
    return WillPopScope(
      // Cuando se
      onWillPop: () {
        print("🤦🏻‍♂️");
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Will Pop Scope Page'),
        ),
      ),
    );
  }
}
