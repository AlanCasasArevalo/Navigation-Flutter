import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    // Con esto hacemos que el usuario final no pueda salirse del dialogo sin tocar una opcion
    enableDrag: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.elliptical(20, 10),
        topRight: Radius.elliptical(20, 10),
      ),
    ),
    // Con esto hacemos que el dialogo tenga valores maximos, esta tanto altura como anchura
    constraints: BoxConstraints(
      maxWidth: 440
    ),
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
