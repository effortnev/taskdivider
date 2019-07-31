import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taskdivder/new_tasklist.dart';
import 'package:taskdivder/task_list.dart';

class TaskListNameScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("New Tasklist")),
      body: Column(children: <Widget>[Text("Enter in the name for the new Task list"),
      new TextField(
        decoration: new InputDecoration(hintText: "Enter name of task list here"),
        onSubmitted: (text) => Navigator.push(context, MaterialPageRoute(builder: (context) => NewTaskListScreen(TaskList(text)))), 

      )],

    ));
  } 
}