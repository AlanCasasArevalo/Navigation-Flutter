import 'package:flutter/material.dart';

Future<void> showCustomDialog(
  BuildContext context, {
  String title = '',
}) async {
  return showDialog(
    context: context,
    builder: (context) => _CustomDialog(),
  );
}

class _CustomDialog extends StatelessWidget {
  const _CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 360,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 32,
                    ),
                  ),
                ),
                Text(
                  "Congratulations",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.green,
                  size: 100,
                ),
                Text(
                  "Contrarina asoij asioj  asoijoijda asoijasdoasij asdij adsoi Contrarina asoij asioj  asoijoijda asoijasdoasij asdij adsoi Contrarina asoij asioj  asoijoijda asoijasdoasij asdij adsoi Contrarina asoij asioj  asoijoijda asoijasdoasij asdij adsoi Contrarina asoij asioj  asoijoijda asoijasdoasij asdij adsoi ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
