import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/data/tasks_collection.dart';
import '../components/tasks/task_master.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/data/tasks.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.tasks}) : super(key: key);
  final TasksCollection tasks;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  var selectedTask;

  void showDetails(Task task) {
    setState(() {
      selectedTask = task;
    });
  }

  void hideDetails() {
    setState(() {
      selectedTask = null;
    });
  }

  void showAlertDeleteTask(Task task) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Delete Task'),
        content: const Text('Are you sure to delete this task ?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('No', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () => {
              setState(() {
                selectedTask = null;
                widget.tasks.remove(task);
                Navigator.pop(context, 'Cancel');
              })
            },
            child: const Text('Yes', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (selectedTask != null)
                    ? TaskDetails(
                        task: selectedTask,
                        close: hideDetails,
                        showAlertDeleteTask: showAlertDeleteTask)
                    : Container(),
                TaskMaster(tasks: widget.tasks, showDetails: showDetails)
              ]),
        ),
      );
}
