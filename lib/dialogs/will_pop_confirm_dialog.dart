import 'package:flutter/material.dart';

Future<bool> showWillPopScopeConfirmDialog(
  BuildContext context, {
  String title = '',
}) async {
  final result = await showDialog<bool>(
    // Color de fondo del dialogo
    barrierColor: Colors.white.withOpacity(.7),
    context: context,
    builder: (context) => _DialogContent(
      title: title,
    ),
    // Si no queremos que el dialogo NO se pueda minimizar, en Android se puede minimizar con el boton atras nativo de android.
    barrierDismissible: false
  );
  return result ?? false;
}

class _DialogContent extends StatelessWidget {
  final String title;

  const _DialogContent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AlertDialog(
        // Redondeo de los bordes, si no le pasamos borderRadius se quedaria rectangular completamente
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // Color del dialogo
        backgroundColor: Colors.blueGrey,
        // Elevacion de la sombra
        elevation: 10,
        // Alineamiento del dialogo en toda la pantalla
        alignment: Alignment.center,
        // Alineamiento de los botones respecto al dialogo
        actionsAlignment: MainAxisAlignment.center,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              // Si no pasamos el segundo parametro a la vista padre (booleano) no se vera el print, debido a que es un dato null por defecto
              Navigator.pop(context, true);
            },
            child: Text(
              "Yes",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text(
              "Nope",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
