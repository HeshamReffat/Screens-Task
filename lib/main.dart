import 'package:calculator_app/Screens/Filter.dart';
import 'package:calculator_app/Screens/HomeScreen.dart';
import 'package:calculator_app/Screens/Loginpage.dart';
import 'package:calculator_app/Screens/SignupPage.dart';
import 'package:calculator_app/Screens/completeprofile.dart';
import 'package:calculator_app/Screens/landing%20page.dart';
import 'package:calculator_app/Screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue.shade600),
      debugShowCheckedModeBanner: false,
      title: 'TaskApp1',
      home:LandingPage(),
      routes:{
        SignUp.routeName: (ctx)=> SignUp(),
        LoginPage.routeName:(ctx)=>LoginPage(),
        HomeScreen.routeName:(ctx)=>HomeScreen(),
        LandingPage.routeName:(ctx)=>LandingPage(),
        Profile.routeName:(ctx)=>Profile(),
        SettingsScreen.routeName:(ctx)=>SettingsScreen(),
        FilterScreen.routeName:(ctx)=>FilterScreen(),
      }
    );
  }
}

