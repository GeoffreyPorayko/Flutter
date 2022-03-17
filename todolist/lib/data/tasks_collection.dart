import 'package:flutter/material.dart';
import '../models/task.dart';
import './tasks.dart';

class TasksCollection extends ChangeNotifier {
  late List<Task> tasks = tasksList;

  get length => tasks.length;

  Task getAt(int index) {
    return tasks[index];
  }

  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void update(Task task) {
    tasks.insert(0, task);
    notifyListeners();
  }

  void remove(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
