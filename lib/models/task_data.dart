import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      title: 'Buy milk',
    ),
    Task(
      title: 'Buy eggs',
    ),
    Task(
      title: 'Buy bread',
    ),
  ];

  int get taskLength {
    return tasks.length;
  }
}