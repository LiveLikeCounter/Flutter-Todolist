import 'package:flutter/material.dart';

import 'util.dart';

import 'package:flutter_todolist/onboarding.dart';
import 'package:flutter_todolist/empty.dart';
import 'package:flutter_todolist/home.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: CustomColors.GreyBackground,
        fontFamily: 'rubik',
      ),
      home: Empty(),
    );
  }
}

