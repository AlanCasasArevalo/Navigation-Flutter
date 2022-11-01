import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    // Envolviendo el contenido en un Container podemos usar las propiedades de border radius debido a que el modal bottom no las tiene
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.elliptical(20, 10),
          topLeft: Radius.elliptical(20, 10),
        ),
      ),
      child: SafeArea(
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
    ),
  );
}
