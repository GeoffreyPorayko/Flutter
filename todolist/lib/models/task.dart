import 'dart:ffi';

class Task {
  int id;
  String content;
  bool completed;
  DateTime createdAt;

  // Constructor, with syntactic sugar for assignment to members.
  Task(this.id, this.content, this.completed, this.createdAt) {
    // Initialization code goes here.
    this.id = id;
    this.content = content;
    this.completed = completed;
    this.createdAt = createdAt;
  }
}
