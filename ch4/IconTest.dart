import 'package:flutter/material.dart';

class IconTest extends StatefulWidget {
  const IconTest({super.key});

  @override
  State<IconTest> createState() => _IconTestState();
}

class _IconTestState extends State<IconTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Test'),
        backgroundColor: Colors.cyan,
      ),
      body: Icon(
        Icons.home,
        size: 70,
        color: Colors.red,
      ),
    );
  }
}
