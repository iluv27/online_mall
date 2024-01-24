import 'package:flutter/material.dart';

class MyMessengeHandler {
  static void showSnackbar(var scaffoldKey, String message) {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.hideCurrentSnackBar(); // Change this line
      scaffoldKey.currentState!.showSnackBar(
        // Change this line
        SnackBar(
          backgroundColor: Colors.yellowAccent,
          content: Text(
            message,
            style: const TextStyle(fontSize: 16, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }
}
