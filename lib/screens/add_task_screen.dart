import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todoey/screens/task.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String textFieldValue;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  textFieldValue = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                  height: 40,
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(textFieldValue);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
