import 'package:flutter/material.dart';

showBottomSheetDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    // Si hay bastantes elementos seria conveniente habilitar este parametro el scroll, pero si hay excesivos elementos
    // se va a seguir teniendo un error de renderizacion
    // isScrollControlled: true,
    builder: (context) => Container(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.photo),
            title: Text("Photos"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.south_rounded),
            title: Text("Music"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.video_camera_back_rounded),
            title: Text("Video"),
          ),        ListTile(
            onTap: () {},
            leading: Icon(Icons.photo),
            title: Text("Photos"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.south_rounded),
            title: Text("Music"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.video_camera_back_rounded),
            title: Text("Video"),
          ),        ListTile(
            onTap: () {},
            leading: Icon(Icons.photo),
            title: Text("Photos"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.south_rounded),
            title: Text("Music"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.video_camera_back_rounded),
            title: Text("Video"),
          ),        ListTile(
            onTap: () {},
            leading: Icon(Icons.photo),
            title: Text("Photos"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.south_rounded),
            title: Text("Music"),
          ),
        ],
      ),
    ),
  );
}
