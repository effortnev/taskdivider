
import 'package:flutter/material.dart';
import 'package:taskdivder/task_list.dart';

import 'new_task.dart';


class TaskUrgency extends StatelessWidget{
  final TaskList tasklist;
  const TaskUrgency({Key key, this.tasklist}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(title: Text(tasklist.name)),
      body: Column(children: <Widget>[Text("Choose urgency for each of your urgent tasks"),
      Expanded(
        child: ListView(children: tasklist.tasks.where( (t) => t.urgent).map((t) => _TaskTile(task: t,)).toList(),)
      ),
      ]));
  }
  
}

class _TaskTile extends StatelessWidget{
  final Task task;

  const _TaskTile({Key key, this.task}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(task.taskStr),);
  }

}