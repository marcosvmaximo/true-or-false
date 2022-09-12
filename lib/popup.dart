import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomAlert {
  static onBasicAlertPressedTrue(context) {
    Alert(
      context: context,
      image: const Icon(
        Icons.check_circle_outline_rounded,
        color: Colors.green,
        size: 22,
      ),
      title: "Parabéns !",
      desc: "Certa resposta, continue assim.",
      buttons: [
        DialogButton(
          child: const Text(
            'Continuar',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ).show();
  }

  static onBasicAlertPressedFalse(context) {
    Alert(
      context: context,
      image: const Icon(
        Icons.close_sharp,
        color: Colors.red,
        size: 22,
      ),
      title: "Que pena",
      desc: "Tente novamente, mais sorte na proxima...",
      buttons: [
        DialogButton(
          child: const Text(
            'Continuar',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ).show();
  }
}
