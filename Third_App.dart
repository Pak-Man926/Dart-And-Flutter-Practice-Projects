import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
      appBar:AppBar(
        title: Text("My Third App",
          textAlign: TextAlign.center,
        ),
        body: Text("Hello")
      )
      ),
    ),
  );
}