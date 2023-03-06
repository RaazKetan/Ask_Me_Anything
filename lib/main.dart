import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
     const MyApp()
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(child: Text('Ask me Anything')),
        ),
      body:Row(
        children: <Widget>[
          Expanded(child: Image.asset('images/ball1.png'),),
          Expanded(child: Text('Question'),),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.question_mark),
        ),
      ),
    );
  }
}



