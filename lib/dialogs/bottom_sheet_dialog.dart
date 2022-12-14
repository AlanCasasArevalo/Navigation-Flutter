import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    // Con este metodo hacemos que el dialogo no pueda ser minimizado dando fuera del mismo
    isDismissible: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.elliptical(20, 10),
        topRight: Radius.elliptical(20, 10),
      ),
    ),
    constraints: BoxConstraints(maxWidth: 440),
    context: context,
    builder: (context) => SafeArea(
      child: Column(
        // Se hace que los elementos ocupen lo minimo posible
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.photo),
            title: Text("Photos"),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.south_rounded),
            title: Text("Music"),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.video_camera_back_rounded),
            title: Text("Video"),
          ),
        ],
      ),
    ),
  );
}
