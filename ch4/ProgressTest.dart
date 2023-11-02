import 'package:flutter/material.dart';

class ProgressTest extends StatefulWidget {
  const ProgressTest({super.key});

  @override
  State<ProgressTest> createState() => _ProgressTestState();
}

class _ProgressTestState extends State<ProgressTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          CircularProgressIndicator(),
          LinearProgressIndicator()
        ],
      )
      

      CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }
}
