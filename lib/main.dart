// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cuppertino_bmi/bmi.dart';
import 'package:cuppertino_bmi/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      localizationsDelegates: const<LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
      ],
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [ 
          BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: 'BMI',
        ),
          BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings_solid),
          label: 'Settings',
        ),
        ],
      ),
      tabBuilder: (BuildContext context, int i){
        if(i == 0)
          return Bmi();
        else 
          return Settings();
      },      
    );
  }
}