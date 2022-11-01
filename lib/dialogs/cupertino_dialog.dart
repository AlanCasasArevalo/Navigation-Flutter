import 'package:flutter/cupertino.dart';

Future<int> showDialogWitCupertinoStyle(
  BuildContext context, {
  String title = '',
  String content = '',
}) async {
  final result = await showCupertinoDialog<int>(
    barrierDismissible: true,
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            child: Text('Ok'),
            onPressed: () {
              Navigator.pop(context, 1);
            },
          ),
          CupertinoDialogAction(
            child: Text('Bad things'),
            onPressed: () {
              Navigator.pop(context, 2);
            },
          ),
          CupertinoDialogAction(
            child: Text('three little birds'),
            onPressed: () {
              Navigator.pop(context, 3);
            },
          ),
        ],
      );
    },
  );
  return result ?? -1;
}
