//Create a flutter project called second_app. Display your name on screen.

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
         appBar: AppBar(
          title: const Text("My Second App"),
         ),
        body: const Center(
          child: Text("Hello David!"),
        ),
      ),
    ),
  );
}

