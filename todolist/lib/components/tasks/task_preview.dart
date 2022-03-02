import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';

class TaskPreview extends StatelessWidget {
  final Task task;

  TaskPreview(this.task);

  @override
  Widget build(BuildContext context) {
    Decoration() {
      if (task.completed) {
        return BoxDecoration(
          color: Colors.green.shade300,
          border: Border.all(
            color: Colors.black,
          ),
        );
      } else {
        return BoxDecoration(
          color: Colors.red.shade300,
          border: Border.all(
            color: Colors.black,
          ),
        );
      }
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: Decoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                  child: Text(
                task.content,
                style: TextStyle(fontSize: 18, fontFamily: 'Rubik'),
              )),
            ],
          ),
          Column(
            children: [
              Center(
                  child: Text((() {
                if (task.completed) {
                  return "Fait";
                } else {
                  return "Non Fait";
                }
              })(),
                      style: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic))
                  /*Text(
                  DateFormat('dd/MM/yyyy HH:mm:ss').format(task.createdAt),
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Arial',
                      fontStyle: FontStyle.italic),
                ),*/
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
