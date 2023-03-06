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
  int number = 1;
    List<String>question = [
      'Is Cow an Animal',
      'Are you Human',
      'Earth is flat',
      'You Gay'
    ];
    int variable = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Ask me Anything')),
        ),
      body:Column(
        children: <Widget>[
          Row(
            children:  <Widget>[
              Text('${question[variable]}'),
            ],
          ),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                number = Random().nextInt(5)+1;
              });
            },
            child:Image.asset('images/ball$number.png'),
          )),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          },
          child: Icon(Icons.question_mark),
        ),
      ),
    );
  }
}



