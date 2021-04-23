import 'package:agri/crops/bajra.dart';
import 'package:agri/crops/cotton.dart';
import 'package:agri/crops/rice.dart';
import 'package:agri/crops/sugarCane.dart';
import 'package:agri/crops/wheat.dart';
import 'package:agri/location.dart';
import 'package:agri/screens/cropList.dart';
import 'package:agri/screens/homepage.dart';
import 'package:agri/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'screens/homepage.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

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
      theme: ThemeData(),
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
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
      initialRoute: WelcomeScreen.id,
    );
  }
}
