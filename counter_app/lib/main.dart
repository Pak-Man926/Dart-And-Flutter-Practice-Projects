import "package:flutter/material.dart";

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: CounterScreen()
    );
  }
}

class CounterScreen extends StatefulWidget
{
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
  
}

class _CounterScreenState extends State<CounterScreen>
{
  int _counter = 0;
  
  void _incrementCounter()
  {
    setState(()
            
             {
               _counter ++;
             });
  }
  
  void _decrementCounter()
  {
    setState(()
             {
               _counter --;
             }
            );
  }

  void _resetCounter()
  {
    setState(()
    {
      _counter = 0;
    });
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter App")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value",
                style: TextStyle(fontSize: 24)
                ),
            
            Text("$_counter",
                  style: TextStyle(fontSize:40, fontWeight: FontWeight.bold), 
                ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text("Increment")
                ),
                //SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text("Decrement")
                ),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Text("Reset"),
                )

              ]
            )
          ]
        )
      )
    );
    
  }
}