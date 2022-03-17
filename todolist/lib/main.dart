import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';
import 'package:todolist/screens/RouteTest.dart';
import './screens/all_tasks.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TasksCollection(),
    child: const TodoList(),
  ));
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksCollection>(builder: (context, tasks, child) {
      return MaterialApp(
          title: "My ToDoList",
          theme: ThemeData(
            fontFamily: 'Pacifico',
            primarySwatch: Colors.yellow,
          ),
          initialRoute: '/',
          initialRoute: AllTasks(tasks: tasks),
          routes: {SecondScreen.route: ((context) => const SecondScreen())}
          //home: AllTasks(tasks: tasks),
          );
    });
  }
}
