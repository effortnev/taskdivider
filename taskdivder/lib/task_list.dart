import 'new_task.dart';

class TaskList {
  List<Task> tasks;
  String name;

  TaskList(String name) {
    this.name = name;
    this.tasks = [];
  }
}
