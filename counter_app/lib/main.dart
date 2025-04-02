import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "counter_provider.dart";

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create : (_) => CounterProvider()),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: CounterScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class CounterScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Provider State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value:",
              style: TextStyle(fontSize:24),
            ),
            SizedBox(height: 10),
            Text(
              "${counterProvider.counter}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
            ),
            SizedBox(height:40),
            ElevatedButton(
              onPressed: counterProvider.increment,
              child: Text("Increment"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: counterProvider.decrement,
              child:Text("Decrement"),
              ),
          ],
          )
      )
    );
  }
}