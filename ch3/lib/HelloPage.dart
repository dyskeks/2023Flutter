import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HelloPage extends StatefulWidget{
  late String title;
  int count = 0;
  HelloPage({super.key, String title}){
    this.title = title;
  }

 State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState() extends State<HelloPage> {
  String massage = 'Hello World';

  // int count = 0;

  Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Hello World'),

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            massage,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '$widget.count',
            style: TextStyle(fontSize: 50),

          )
        ],
      ),
    )
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: ChangeCounter,
    ),
  );
}

  void ChangeCounter(){

    setState(() {
      widget.count++;
    });
  }
  void Changemessage(){
    setState(() {
      message = "헬로 월드";
    });
  }
}

