import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import './task_preview.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> allTasks;

  TaskMaster({
    required this.allTasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ...(allTasks as List<Task>).map((task) {
          return TaskPreview(task);
        }).toList(),
      ],
    );
  }
}
