import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Trial App")
        ),
        body: const Center(
          child: Text("Welcome"),
        ),
      ),
    ),
  );
}