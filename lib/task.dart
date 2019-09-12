import 'package:flutter/material.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/bottomNavigation.dart';
import 'package:flutter_todolist/fab.dart';
import 'package:flutter_todolist/util.dart';

class Task extends StatefulWidget {
  Task({Key key}) : super(key: key);

  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Container(
                        margin: EdgeInsets.only(left: 10, top: 15, bottom: 0),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: CustomColors.TextSubHeader),
                        ),
                      ),
                  childCount: 1),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-user.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.YellowBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Personal',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '24 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-briefcase.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.GreenBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '44 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-presentation.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.PurpleBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Meeting',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '45 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-shopping-basket.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.OrangeBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Shopping',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '54 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-confetti.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.BlueBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Party',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '24 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-molecule.png'),
                            decoration: const BoxDecoration(
                              color: CustomColors.PurpleBackground,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Study',
                            style: TextStyle(
                                fontSize: 17,
                                color: CustomColors.TextHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '24 Tasks',
                            style: TextStyle(
                                fontSize: 9,
                                color: CustomColors.TextSubHeaderGrey),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.GreyBorder,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.all(10),
                    height: 150.0),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar:
          BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}
