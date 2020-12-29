import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallBack;
  final Function deleteTask;
  TaskTile(
      {@required this.isChecked,
      @required this.title,
      @required this.checkBoxCallBack,
      this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack),
    );
  }
}
