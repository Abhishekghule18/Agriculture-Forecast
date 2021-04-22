import 'package:agri/crops/bajra.dart';
import 'package:agri/crops/cotton.dart';
import 'package:agri/crops/rice.dart';
import 'package:agri/crops/sugarCane.dart';
import 'package:agri/crops/wheat.dart';
import 'package:agri/location.dart';
import 'package:agri/screens/cropList.dart';
import 'package:agri/screens/homepage.dart';
import 'package:agri/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'screens/homepage.dart';
import 'screens/login.dart';
import 'screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ForAgri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          //primarySwatch: Colors.teal,

          ),
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        GetLocation.id: (context) => GetLocation(),
        CropList.id: (context) => CropList(),
        WheatData.id: (context) => WheatData(),
        RiceData.id: (context) => RiceData(),
        BajraData.id: (context) => BajraData(),
        SugarCaneData.id: (context) => SugarCaneData(),
        CottonData.id: (context) => CottonData(),
      },
      initialRoute: MyHomePage.id,
    );
  }
}
