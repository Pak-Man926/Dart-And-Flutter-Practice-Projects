import 'package:flutter/material.dart';

void main()
{
  runApp(
  MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Container(
          child:Text("Welcome!"),
        )
    ),
     body: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Icon(Icons.star, size:50, color: Colors.yellow),
       Icon(Icons.star, size:50, color: Colors.yellow),
       Icon(Icons.star, size:50, color: Colors.yellow),
       Icon(Icons.star, size:50, color: Colors.yellow),
       Icon(Icons.star_border, size:50, color: Colors.yellow)
     ]
     )
    )
  ),
  );
  
}