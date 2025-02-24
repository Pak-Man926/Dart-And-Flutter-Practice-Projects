import 'dart:io';

void main() {
  while (true) {
    print("-----------------------------------");
    print("            Welcome                ");
    print("-----------------------------------");
    print(" 1. View available tasks");
    print(" 2. Add a task");
    print(" 3. Update a task");
    print(" 4. Delete a task");
    print(" 5. Exit");

    stdout.write("Enter your choice: ");
    var choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        viewTasks();
        break;
      case 2:
        addTasks();
        break;
      case 3:
        updateTasks();
        break;
      case 4:
        deleteTasks();
        break;
      case 5:
        exitApp();
        break;
      default:
        print("Not a valid input! Try again.");
        break;
    }
  }
}

void viewTasks() {
  File file = File("To-Do.txt");

  if (!file.existsSync()) {
    print("No tasks found.");
    return;
  }

  var contents = file.readAsStringSync();
  print("Your To-Do List:\n$contents");
}

void addTasks() {
  File file = File("To-Do.txt");

  while (true) {
    stdout.write("Enter a task (or type 'exit' to stop adding): ");
    var input = stdin.readLineSync();

    if (input == null || input.trim().toLowerCase() == 'exit') {
      break;
    }

    file.writeAsStringSync("$input\n", mode: FileMode.append);
    print("Task added successfully!");
  }
}

void updateTasks() {
  File file = File("To-Do.txt");

  if (!file.existsSync()) {
    print("No tasks found.");
    return;
  }

  var fileContents = file.readAsStringSync();
  print("Current To-Do List:\n$fileContents");

  stdout.write("Enter the task you'd like to update: ");
  var oldTask = stdin.readLineSync()?.trim();

  stdout.write("Enter the new task: ");
  var newTask = stdin.readLineSync()?.trim();

  if (oldTask == null || newTask == null || oldTask.isEmpty || newTask.isEmpty) {
    print("Invalid input. Task update failed.");
    return;
  }

  if (!fileContents.contains(oldTask)) {
    print("Task not found!");
    return;
  }

  String updatedContent = fileContents.replaceAll(oldTask, newTask);
  file.writeAsStringSync(updatedContent);

  print("Task updated successfully!");
}

void deleteTasks() {
  File file = File("To-Do.txt");

  if (!file.existsSync()) {
    print("No tasks found.");
    return;
  }

  var fileContents = file.readAsLinesSync();
  print("Current To-Do List:");
  for (var i = 0; i < fileContents.length; i++) {
    print("${i + 1}. ${fileContents[i]}");
  }

  stdout.write("Enter the task number to delete: ");
  var taskIndex = int.tryParse(stdin.readLineSync() ?? '');

  if (taskIndex == null || taskIndex <= 0 || taskIndex > fileContents.length) {
    print("Invalid input. Task deletion failed.");
    return;
  }

  fileContents.removeAt(taskIndex - 1);
  file.writeAsStringSync(fileContents.join('\n'));

  print("Task deleted successfully!");
}

void exitApp() {
  print("Goodbye!");
  exit(0);
}
