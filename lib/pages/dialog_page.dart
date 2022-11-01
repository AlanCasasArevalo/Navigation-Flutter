import 'package:flutter/material.dart';
import 'package:navigation/dialogs/confirm_dialog.dart';

import '../dialogs/cupertino_dialog.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text("Show info dialog"),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => DialogContent(),
              );
            },
          ),
          ListTile(
            title: Text("Show confirm dialog"),
            onTap: () async {
              final isOK = await showConfirmDialog(
                context,
                title: 'Are you sure',
              );
              print("Resultado del dialogo $isOK");
            },
          ),
          ListTile(
            title: Text("Show cupertino dialog"),
            onTap: () async {
              final result = await showDialogWitCupertinoStyle(
                context,
                title: 'Are you sure',
                content: 'Hasta luego maricarme'
              );
              print("Se ha seleccionado $result");
            },
          )
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("My Dialog"),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        ),
      ],
    );
  }
}
