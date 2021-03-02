import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Test task"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  
  List<Color> _colors = [Colors.white, Colors.blue, Colors.purple, Colors.red, Colors.yellow];
  final _random = new Random();
  Color currentColor;

  @override
  void initState() {
    super.initState();
  }

  String whichColor(Color currentColor){
    String result;
    if(currentColor==Colors.red){
      result='Background color is red!';
    }else if(currentColor==Colors.white){
      result='Background color is white!';
    }else if(currentColor==Colors.blue){
      result='Background color is blue!';
    }else if(currentColor==Colors.purple){
      result='Background color is purple!';
    }else if(currentColor==Colors.yellow){
      result='Background color is yellow!';
    }
    return result;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentColor=_colors[_random.nextInt(_colors.length)],
      body: GestureDetector(
        onTap: () {
          setState(() {
          });
        },
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hey there',
                    style: TextStyle(fontSize: 24, color: Colors.black),),
                    Text(whichColor(currentColor)), 
                  ], 
                ),
              ),
            ),
          ],
        )
      )
    );
  }}