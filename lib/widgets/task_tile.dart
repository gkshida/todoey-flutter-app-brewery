import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;

  TaskTile({this.title});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
      value: false,
      onChanged: (value) {},
    );
  }
}