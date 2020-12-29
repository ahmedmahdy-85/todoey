import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, bottom: 30.0, right: 30.0),
            child: Column(children: [
              CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Colors.lightBlueAccent,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '${Provider.of<TaskData>(context).tasksCount} Tasks',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(
                height: 10.0,
              ),
            ])),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: TasksList(),
          ),
        ),
      ]),
    );
  }
}
