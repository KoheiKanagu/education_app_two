import 'package:flutter/material.dart';

class MyAlertDialog {
  static show(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(("Close")))
        ],
      ),
    );
  }
}
