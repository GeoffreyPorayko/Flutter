import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';

class TaskPreview extends StatelessWidget {
  final Task task;

  TaskPreview(this.task);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(task.content),
        Text(DateFormat().format(task.createdAt)),
      ],
    );
  }
}
