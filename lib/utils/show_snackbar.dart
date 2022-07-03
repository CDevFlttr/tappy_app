import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tappy_app/main.dart';

class UtilsSnack {
  static String? showSnackBar(String? message, BuildContext? context) {
    if (message == null) return null;

    final snackBar = SnackBar(
      content: Text(
        message,
      ),
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
