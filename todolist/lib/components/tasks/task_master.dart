import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import './task_preview.dart';

class TaskMaster extends StatelessWidget {
  final List<Map<Task, Object>> allTasks;

  TaskMaster({
    required this.allTasks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(allTasks as List<Map<Task, Object>>).map((task) {
          return TaskPreview(task);
        }).toList()
      ],
    );
  }
}
