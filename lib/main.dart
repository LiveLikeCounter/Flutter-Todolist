import 'package:flutter/material.dart';

import 'package:flutter_todolist/onboarding.dart';
import 'util.dart';


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
      home: Onboarding(),
    );
  }
}

