//Create app using ListView.builder to display a scrollable list containing the names of your 10 friends, with each name as a separate item.

import "package:flutter/material.dart";

void main()
{
  List<String> name = [
    "Davie",
    "Jack",
    "John",
    "Kev",
    "Owen",
    "Sam",
    "Grayson",
    "Joy",
    "Boni",
    "Shane"
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          centerTitle: true,
          title: Text("Friends List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
        ),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index)
          {
            return ListTile(
              title: Text(name[index])
            );
          }
        )
      )
    )
  );
}

