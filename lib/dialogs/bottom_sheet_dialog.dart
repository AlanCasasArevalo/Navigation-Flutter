import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    // Envolviendo el contenido en un safe area hacemos que no se queden pegados los botones
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
