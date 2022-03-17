import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';

class TaskDetails extends StatelessWidget {
  final Task? task;
  final Function close;
  final Function showAlertDeleteTask;

  const TaskDetails(
      {Key? key,
      required this.task,
      required this.close,
      required this.showAlertDeleteTask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getIconCompleted() {
      return (task!.completed)
          ? const Icon(Icons.check)
          : const Icon(Icons.timelapse);
    }

    return Column(
      children: [
        getIconCompleted(),
        Text(task!.content),
        Text(task!.createdAt.toString()),
        OutlinedButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
          ),
          onPressed: () => close(),
          child: Text('close'),
        ),
        OutlinedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 255, 43, 15)),
          ),
          onPressed: () => showAlertDeleteTask(task),
          child: Text('Delete'),
        )
      ],
    );
  }
}
