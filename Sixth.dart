//Write a Flutter layout using a Row to create a horizontal bar of three evenly spaced buttons.

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar:AppBar(
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            MaterialButton(
              onPressed:()
              {
                print("hello");
              },
             color: Colors.blue,
             child : Text("One"),
            ),
            MaterialButton(
              onPressed:()
              {
                print("hello");
              },
             color: Colors.blue,
             child : Text("Two"),
            ),
            MaterialButton(
              onPressed:()
              {
                print("hello");
              },
             color: Colors.blue,
             child : Text("Three"),
            ),
          ]
        )
      )
    )
  );
}