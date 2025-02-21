import 'dart:io';

void main()
{
  print("-----------------------------------");
  print("-----------------------------------");
  print("            Welcome                ");
  print("-----------------------------------");
  print(" 1. View available tasks");
  print(" 2. Add a task ");
  print(" 3. Update a task");
  print(" 4. Mark task as done");
  print(" 5. Delete a task ");
  print(" 6. Exit");
  
  File file = new File("To-Do.txt");
  
  file.writeAsStringSync("Welcome To Your To Do List. Here are the list of activities to be completed:\n");
  
  var choice = int.parse(stdin.readLineSync()!);
  
  switch(choice)
  {
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
      completeTasks();
      break;
      
    case 5:
      deleteTasks();
      break;
  
    case 6:
      exitApp();
      break;
      
    default:
      print("Not a valid input!!");
      break;
  }
  
  
}
void viewTasks()
{
  File file = new File("To-Do.txt");
  
  var contents = file.readAsStringSync();
  
  print(contents);
}

void addTasks()
{
  File file =File("To-Do.txt");
  
  while(true)
  {
    print("Enter the tasks you'd like to complete today:");
    
    var input = stdin.readLineSync();
    
    if(input > null)
    {
      file.writeAsStringSync("$input", mode: FileMode.append);
    }
    else
    {
      break;
    }
  }
}

void exitApp()
  {
    SystemNavigator.pop();
  }
