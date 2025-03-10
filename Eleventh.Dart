import "package:flutter/material.dart";

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        title: Text("Ecommerce Page")
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            MaterialButton(
              onPressed: ()
              {
                
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 1"),
                ]
              )
            ),
            MaterialButton(
              onPressed: ()
              {
                
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 2"),
                ]
              )
            ),
             MaterialButton(
              onPressed: ()
              {
                
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 3"),
                ]
              )
            ),
             MaterialButton(
              onPressed: ()
              {
                
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 4"),
                ]
              )
            ),
           ] 
        )
      )
     )
    );
}