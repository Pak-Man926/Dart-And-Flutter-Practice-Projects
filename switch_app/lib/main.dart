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
      home: ToggleSwitch()
    );
  }
}

class ToggleSwitch extends StatefulWidget
{
  const ToggleSwitch({super.key});

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch>
{
  bool isSwitched = false;
  
  void _toggleSwitch(bool value)
  {
    setState(()
             {
               isSwitched = value;
             }
            );
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switcher App")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSwitched ? "Switch is On" : "Switch is Off",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200)
            ),
            Switch(
              value: isSwitched,
              onChanged: _toggleSwitch,
            )
          ]
        )
      )
    );
  }
}