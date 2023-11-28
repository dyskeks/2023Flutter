import 'package:ch9/BmiMain.dart';
import 'package:ch9/BmiResult.dart';
import 'package:ch9/MyCustomForm.dart';
import 'package:ch9/Myform.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Bmimain(),
      //home: BmiResult(height: 1.0, weight: 2.0),
      //home: MyCustomForm(),
      //home: Scaffold(
        //appBar: AppBar(
          //title: Text('폼 검증 데모'),
          //backgroundColor: Colors.tealAccent,
        //),
        //body: Myform(),
      //),
      //Myform(),
    );
  }
}