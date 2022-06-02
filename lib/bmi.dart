// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        child: Column(
          children: <Widget>[
            Image.network('https://bit.ly/img_bmi'),
            Row(children: <Widget>[
              Text('Height',
              style: TextStyle(color: Colors.blue),
              ),
              Expanded(
                child: CupertinoTextField(),)
            ],),
            Row(children: <Widget>[
              Text('Weight',
              style: TextStyle(color: Colors.blue),
              ),
              Expanded(
                child: CupertinoTextField(),)
            ],),
          CupertinoButton.filled(
            child: Text('Calculate BMI'), 
            onPressed: (){},
          ),
          ],
        )
      ),
    );
  }
}