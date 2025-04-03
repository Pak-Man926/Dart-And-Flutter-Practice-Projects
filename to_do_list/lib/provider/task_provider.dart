import "package:flutter/material.dart";
import "package:to_do_list/models/task_model.dart";

class TaskProvider extends ChangeNotifier
{
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title)
  {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void deleteTask(int index)
  {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTask(int index)
  {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }

}