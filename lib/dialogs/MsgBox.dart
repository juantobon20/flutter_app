import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context,
    {title = "", msg = "", opCancel = false, posButton = "Aceptar", negButton = "Cancelar"}) {
  var cancelButton;
  if (opCancel) {
    Widget cancelButton = FlatButton(
      child: Text(negButton),
      onPressed: () {},
    );
  }
  Widget continueButton = FlatButton(
    child: Text(posButton),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
