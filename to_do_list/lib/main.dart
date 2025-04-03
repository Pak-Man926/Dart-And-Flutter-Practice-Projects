import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:to_do_list/provider/task_provider.dart";

void main()
{
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => TaskProvider()),
      ],
      child: MyApp(),
    )
  )
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatelessWidget
{
  final TextEditingController _controller = TextEditingController();

  TaskScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        //: ThemeData(primarySwatch: Colors.blue),
        title: Text("To Do List",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: "Add a new task"),
                  )
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: (){
                    if (_controller.text.isNotEmpty)
                    {
                      taskProvider.addTask(_controller.text);
                      _controller.clear();
                    }
                  }
                )
              ],
            )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: taskProvider.tasks.length,
              itemBuilder: (BuildContext context, index)
              {
                final task = taskProvider.tasks[index];

                return ListTile(
                  
                );
              }
            )
          )
        ]
      )
    );
  }
}
