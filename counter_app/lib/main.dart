import "package:flutter/material.dart";

void main()
{
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget
{
  const CounterApp({super.key});

  @override

  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter App",
      home: CounterScreen(),
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
      _counter++;
    });
  }

  void _decrementCounter()
  {
    setState(()
    {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_counter",
              style: TextStyle(fontSize: 72),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ]
        )
      )
    );
  }
}