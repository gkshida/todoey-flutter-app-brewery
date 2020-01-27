import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String title;

  TaskTile({this.title});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (bool checkboxState) {
        setState(() {
          isChecked = checkboxState;
        });
      },
    );
  }
}
