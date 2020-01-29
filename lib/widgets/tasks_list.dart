import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import 'dialog_button.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            return TaskTile(
              title: task.title,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
              taskTileCallback: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text('Do you want to delete this task?'),
                    actions: <Widget>[
                      DialogButton(
                        text: 'CANCEL',
                        onPressedCallback: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      DialogButton(
                        text: 'OK',
                        onPressedCallback: () {
                          taskData.deleteTaskAt(index);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
