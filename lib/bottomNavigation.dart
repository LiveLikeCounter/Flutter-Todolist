import 'package:flutter/material.dart';

import 'util.dart';

BottomNavigationBar bottomNavigationBar(bottomNavigationBarIndex) {
  return BottomNavigationBar(
    currentIndex: bottomNavigationBarIndex,
    type: BottomNavigationBarType.fixed,
    selectedFontSize: 10,
    selectedLabelStyle: TextStyle(color: CustomColors.BlueDark),
    selectedItemColor: CustomColors.BlueDark,
    unselectedFontSize: 10,
    items: [
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Image.asset(
            'assets/images/home.png',
            color: (bottomNavigationBarIndex == 0)
                ? CustomColors.BlueDark
                : CustomColors.TextGrey,
          ),
        ),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Image.asset(
            'assets/images/task.png',
            color: (bottomNavigationBarIndex == 1)
                ? CustomColors.BlueDark
                : CustomColors.TextGrey,
          ),
        ),
        title: Text('Task'),
      ),
    ],
  );
}
