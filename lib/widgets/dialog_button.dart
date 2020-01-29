import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String text;
  final Function onPressedCallback;

  DialogButton({this.text, this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent,
        ),
      ),
      onPressed: onPressedCallback,
    );
  }
}
