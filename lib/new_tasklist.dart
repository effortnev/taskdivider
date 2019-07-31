import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskdivder/new_task.dart';
import 'package:taskdivder/task_list.dart';

class NewTaskListScreen extends StatefulWidget {
  final TaskList tasklist;
  NewTaskListScreen(this.tasklist);

  @override
  NewTaskListScreenState createState() {
    return NewTaskListScreenState();
  }
}

class NewTaskListScreenState extends State<NewTaskListScreen> {
  String inputStr = "";
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text(widget.tasklist.name)),
      body: Column(
        children: <Widget>[
          Text(
              "\n  Enter each of the tasks in the input bar below & \n  for urgent tasks, push the urgent button  \n  next to the task you have entered:"),
          new TextField(
              decoration: new InputDecoration(hintText: "Enter here"),
              onSubmitted: (String str) {
                setState(() {
                  widget.tasklist.tasks.add(new Task(str));
                  FocusScope.of(context).requestFocus(focusNode);
                });
                controller.text = "";
              },
              focusNode: focusNode,
              controller: controller),
          Expanded(
            child: ListView.builder(
              itemCount: widget.tasklist.tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.tasklist.tasks[index].taskStr),
                  trailing: IconButton(
                    icon: Icon(widget.tasklist.tasks[index].urgent
                        ? Icons.error
                        : Icons.error_outline),
                    onPressed: () => setState(
                        () => widget.tasklist.tasks[index].urgent = !widget.tasklist.tasks[index].urgent),
                  ),
                );
              },
            ),
          ),
          Divider(),
          RaisedButton(
            child: Text("DONE"),
            onPressed: () => null,
          )
        ],
      ),
    );
  }
}
