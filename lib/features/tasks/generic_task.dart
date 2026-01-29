import 'dart:io';

class Task {
  String title;
  String description;
  String date;
  String timeStart;
  String timeEnd;
  bool repeat;
  bool lastsAllDay;
  bool isCompleted;

  Task({
    required this.title,
    this.description = "",
    required this.date,
    required this.timeStart,
    required this.timeEnd,
    this.repeat = false,
    this.lastsAllDay = false,
    this.isCompleted = false,
  });
}

class TaskManager {
  List<Task> _tasks = [];

  void addTask(Task newTask) {
    _tasks.add(newTask);
    print('Task added: ${newTask}');
  }

  void printAll() {
    for (var task in _tasks) {
      print('-----------------------------------');
      print('''
        [${task.isCompleted ? "x" : " "}] ${task.title}
        ${task.description}
        ${task.date}
        ${task.timeStart}
        ${task.timeEnd}
        ${task.repeat}
        ${task.lastsAllDay}
        ${task.isCompleted}
      ''');
    }
  }
}

void main() {
  final manager = TaskManager();

  print("Insert your task name:");
  String taskTitle = stdin.readLineSync() ?? "0";
  print("Insert your task description:");
  String taskDesc =
      stdin.readLineSync() ?? "No Description";
  print("Insert your task date:");
  String taskDate = stdin.readLineSync() ?? "12/01/2026";
  print("Insert your task start time:");
  String taskTimeStart = stdin.readLineSync() ?? "1:00";
  print("Insert your task end time:");
  String taskTimeEnd = stdin.readLineSync() ?? "2:00";
  print("Should task repeat (y/n)?:");
  bool taskRepeat = stdin.readLineSync() == "y";
  print("Should task last all day (y/n)?:");
  bool taskLastsAllDay = stdin.readLineSync() == "y";
  print("Is the task completed (y/n)?:");
  bool taskIsCompleted = stdin.readLineSync() == "y";

  var data = Task(
    title: taskTitle,
    description: taskDesc,
    date: taskDate,
    timeStart: taskTimeStart,
    timeEnd: taskTimeEnd,
    repeat: taskRepeat,
    lastsAllDay: taskLastsAllDay,
    isCompleted: taskIsCompleted,
  );

  manager.addTask(data);
  manager.printAll();
}
