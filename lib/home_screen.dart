import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskdivder/tasklist_name_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text(
        "Task Divider",
      )),
      body: Column(
        children: <Widget>[
          Text("\n To create a task list, push the add button below"),
          Spacer(),
          Container()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TaskListNameScreen())),
        tooltip: 'A new task list',
        child: Icon(Icons.add),
      ),
    );
  }
}
