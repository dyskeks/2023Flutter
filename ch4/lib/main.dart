import 'package:ch4/ButtonTest.dart';
import 'package:ch4/CenterTest.dart';
import 'package:ch4/PageViesUI.dart';
import 'package:ch4/PuzzleUI.dart';
import 'package:ch4/StackTest.dart';
import 'package:ch4/TapBarTest.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationBarTest.dart';
import "ContainerTEst.dart";
//프로그램 시작.
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
      home: ButtonTest(),
    );
  }
}


