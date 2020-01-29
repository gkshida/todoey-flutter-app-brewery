import 'package:flutter/foundation.dart';
import 'dart:collection';

import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
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

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskLength {
    return _tasks.length;
  }

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
