import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'util.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.elliptical(175, 30),
          topRight: const Radius.elliptical(175, 30),
        ),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/add.png'),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      CustomColors.PurpleLight,
                      CustomColors.PurpleDark,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.PurpleShadow,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 60),
                  Text(
                    'Add new task',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: TextField(
                      style:
                          TextStyle(fontSize: 22, fontStyle: FontStyle.normal),
                      autofocus: true,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                          color: CustomColors.GreyBorder,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                          color: CustomColors.GreyBorder,
                        ),
                      ),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            
                          ),
                          child: Text('Personal'),
                        ),
                        Container(
                          child: Text('Work'),
                        ),
                        Container(
                          child: Text('Meeting'),
                        ),
                        Container(
                          child: Text('Study'),
                        ),
                        Container(
                          child: Text('Shopping'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 60,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            CustomColors.BlueLight,
                            CustomColors.BlueDark,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.BlueShadow,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Center(
                        child: const Text(
                          'Add task',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
