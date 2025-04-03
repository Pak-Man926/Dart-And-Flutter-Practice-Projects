import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "theme_provider.dart";

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: themeProvider.themeData,
      home: ThemeToggleScreen(),
    );
  }
}

class ThemeToggleScreen extends StatelessWidget
{
  const ThemeToggleScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        //debugShowCheckedModeBanner: false,
        title: Text("Theme Toggle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Theme: ${themeProvider.themeData == ThemeData.light() ? "Light": "Dark"}",
              style: TextStyle(fontSize: 20),
            ),
            Switch(
              value: themeProvider.themeData == ThemeData.dark(),
              onChanged: (_) => themeProvider.toggleTheme(),
            )
          ],
          )
      )

    );
  }
}