import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({this.title, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxCallback,
    );
  }
}
