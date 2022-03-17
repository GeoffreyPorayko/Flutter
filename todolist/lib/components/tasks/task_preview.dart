import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class TaskPreview extends StatelessWidget {
  final Task task;
  final Function onTaskSelected;

  const TaskPreview(
      {Key? key, required this.task, required this.onTaskSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Decoration() {
      return (task.completed)
          ? BoxDecoration(
              color: Colors.green.shade300,
              border: Border.all(
                color: Colors.black,
              ),
            )
          : BoxDecoration(
              color: Colors.red.shade300,
              border: Border.all(
                color: Colors.black,
              ),
            );
    }

    Widget getIconCompleted() {
      return (task!.completed)
          ? const Icon(Icons.check)
          : const Icon(Icons.timelapse);
    }

    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: Decoration(),
      child: ListTile(
        onTap: () => onTaskSelected(task),
        leading: getIconCompleted(),
        title: Text(
          task.content,
          style: const TextStyle(fontSize: 18, fontFamily: 'Rubik'),
        ),
      ),
    );
  }
}
