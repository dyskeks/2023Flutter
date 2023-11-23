import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;
  const BmiResult({Key? key,
    required this.height,
    required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
