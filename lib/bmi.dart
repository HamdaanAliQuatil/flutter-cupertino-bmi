// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cuppertino_bmi/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({ Key? key }) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('BMI'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: height * 0.8,
            ),
            child: Column(
              children: <Widget>[
                Image.network('https://bit.ly/img_bmi'),
                Util.paddingTop,
                Row(children: <Widget>[
                  Util.paddingLeft,
                  Container(
                    width: width / 3,
                    child: Text('Height',
                    style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: CupertinoTextField(),),
                    Util.paddingLeft,
                ],),
                Util.paddingTop,
                Row(children: <Widget>[
                  Util.paddingLeft,
                  Container(
                    width: width / 3,
                    child: Text('Weight',
                    style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: CupertinoTextField(),),
                    Util.paddingLeft,
                ],),
                Expanded(child: Util.paddingTop),
              CupertinoButton.filled(
                child: Text('Calculate BMI'), 
                onPressed: (){},
              ),
              Util.paddingTop,
              ],
            ),
          ),
        )
      ),
    );
  }
}