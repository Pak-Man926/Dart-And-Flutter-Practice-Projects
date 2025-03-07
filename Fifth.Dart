//Create a new Flutter application that displays “Welcome to Flutter” centered on the screen, with a font size of 24, in blue color, and with a yellow background

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title: Text("Trial")
        ),
        body: Container(
        child: Text("Welcome",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    )
                   ),
        alignment: Alignment.center,
        color: Colors.yellow,
          
        )
      )
    )
  );
}