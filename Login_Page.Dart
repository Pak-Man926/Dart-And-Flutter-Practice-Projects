import 'package:flutter/material.dart';

void main()
{
  runApp(
  MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Welcome")
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        const Row(
          children: <Widget> [
            Text("Username:"),
            Expanded(child: TextField()),
          ]
        ),
        const Row(
          children: <Widget> [
            Text("Password:"),
            Expanded(child: TextField(obscureText: true)),
          ]
        ),
        Row(
          children: <Widget>[
            Expanded(child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){},
              child: const Text("Login"),
            ))
          ]
        )
        
      ],
    ),
  )
  )
  );
}