import 'dart:math';

import 'package:flutter/material.dart';

void main()=>runApp(WeirdApp());


class WeirdApp extends StatefulWidget {
  @override
  _WeirdAppState createState() => _WeirdAppState();
}

class _WeirdAppState extends State<WeirdApp> {
  
  int number;

  randomNumber(){
    setState(() {
      number= Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("my weird app"),backgroundColor: Colors.blue.shade800),
        body: Center(
          child:Container(
            color:Colors.blue.shade400, 
            child: FlatButton(
              child: Image(image: AssetImage('images/ball$number.png')), 
              onPressed: () {
                randomNumber();
              },
            )
          )
        )
      )    
    );
  }
}

