import 'package:flutter/material.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Material(
        child: Center(
          child: Text("Welcome To Hari Om Shukla's Repositories"),
        )
      )
    ); 
  }
}