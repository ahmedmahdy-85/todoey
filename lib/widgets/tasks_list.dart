import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tiles.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTaskStatus(task);
              },
              deleteTask: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksCount,
        );
      },
    );
  }
}
