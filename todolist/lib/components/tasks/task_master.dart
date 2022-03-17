import 'package:flutter/material.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/models/task.dart';
import './task_preview.dart';

class TaskMaster extends StatelessWidget {
  final TasksCollection tasks;
  final Function showDetails;

  TaskMaster({
    required this.tasks,
    required this.showDetails,
  });

  void onTaskSelected(Task task) {
    showDetails(task);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) => TaskPreview(
              task: tasks.getAt(index), onTaskSelected: onTaskSelected)),
    );
  }
}
