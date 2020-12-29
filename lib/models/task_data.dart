import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
  ];
  List<Task> get taskList {
    return _tasks;
  }

  int get tasksCount {
    return taskList.length;
  }

  void addTask(String newTask) {
    taskList.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTaskStatus(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
