import 'dart:html';
import 'package:flutter/material.dart';

import './questions.dart';
void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
    var _answerIndex=0;
    void _answerQuestions(){
        setState((){
           _answerIndex=_answerIndex+1;
 });
      print(_answerIndex);
    }
  Widget build(BuildContext context) {
    @override
    var questions=[
      'what\'s your fav color',
      'what\'s your fav pet',
      'what\'s your fav author',
      'what\'s your fav color',
    ];
     
    return MaterialApp(home: Scaffold(
      appBar:AppBar(
        title: Text("My app bar"),
        ),
      body: Column(
        children: [
          Questions(questions[_answerIndex]),
          RaisedButton(
            child: Text('answer 1'), onPressed:_answerQuestions),
          RaisedButton(
            child: Text('answer 2'),
            onPressed: _answerQuestions),
          RaisedButton(
            child:Text('answer 3'), onPressed:_answerQuestions),
        ],
        )));
  }
}