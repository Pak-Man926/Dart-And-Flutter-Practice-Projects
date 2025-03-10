//Create a simple photo gallery app using GridView. Display images in a grid format with 3 columns and 5 rows.

import "package:flutter/material.dart";

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        title: Text("Photo Gallery")
        ),
        body: GridView.count(
          crossAxisCount: 5,
          children: [
             Image.network('https://picsum.photos/200?image=25'),
             Image.network('https://picsum.photos/200?image=26'),
             Image.network('https://picsum.photos/200?image=27'),
             Image.network('https://picsum.photos/200?image=28'),
             Image.network('https://picsum.photos/200?image=29'),
             Image.network('https://picsum.photos/200?image=30'),
            Image.network('https://picsum.photos/200?image=31'),
            Image.network('https://picsum.photos/200?image=32'),
            Image.network('https://picsum.photos/200?image=33'),
            Image.network('https://picsum.photos/200?image=34'),
            Image.network('https://picsum.photos/200?image=20'),
            Image.network('https://picsum.photos/200?image=30'),
            Image.network('https://picsum.photos/200?image=21'),
            Image.network('https://picsum.photos/200?image=22'),
            Image.network('https://picsum.photos/200?image=23'),
          ]
        )
      )
    )
  );
}