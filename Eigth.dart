//Create a restaurant app that displays a list of dishes. Each dish should have a name, description, and price.

import "package:flutter/material.dart";

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Restaurant")
        ),
        body: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.add_to_queue_rounded),
                title: Text("Chips Masala", style: TextStyle(fontSize:15, fontWeight: FontWeight.bold)),
                subtitle: Text("Some spicy chips done with some good sauces to give you a mouth shocking experience at a price of Ksh: 150"),
              ),
               ListTile(
                leading: Icon(Icons.add_to_queue_rounded),
                title: Text("Chips", style: TextStyle(fontSize:15, fontWeight: FontWeight.bold)),
                subtitle: Text("Some spicy chips done with some good sauces to give you a mouth shocking experience at a price of Ksh: 100"),
              ),
               ListTile(
                leading: Icon(Icons.add_to_queue_rounded),
                title: Text("Lamb chops", style: TextStyle(fontSize:15, fontWeight: FontWeight.bold)),
                subtitle: Text("Some spicy chips done with some good sauces to give you a mouth shocking experience at a price of Ksh: 250"),
              )
            ]
        )
      )
    )
  );
}