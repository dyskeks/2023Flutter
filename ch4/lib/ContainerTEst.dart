import 'package:flutter/material.dart';

class ContainerTEst extends StatefulWidget {
  const ContainerTEst({super.key});

  @override
  State<ContainerTEst> createState() => _ContainerTEstState();
}

class _ContainerTEstState extends State<ContainerTEst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(10.0),
              ),
            ],
          ),
        ],
      )
      ,
    );
  }
}
