import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  final Function taskTileCallback;

  TaskTile({
    this.title,
    this.isChecked,
    this.checkboxCallback,
    this.taskTileCallback,
  });

  @override
  Widget build(BuildContext context) {
    // return CheckboxListTile(
    //   title: Text(
    //     title,
    //     style: TextStyle(
    //       fontSize: 18.0,
    //       decoration: isChecked ? TextDecoration.lineThrough : null,
    //     ),
    //   ),
    //   activeColor: Colors.lightBlueAccent,
    //   value: isChecked,
    //   onChanged: checkboxCallback,
    // );
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: taskTileCallback,
    );
  }
}
