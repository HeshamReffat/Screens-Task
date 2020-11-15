
import 'package:calculator_app/Screens/Filter.dart';
import 'package:calculator_app/Screens/completeprofile.dart';
import 'package:calculator_app/Screens/landing%20page.dart';
import 'package:calculator_app/Screens/setting.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
child: Column(
children: [
  AppBar(title: Text('Welcome Back..!'),
    automaticallyImplyLeading: false,
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.home),
    title: Text('Home'),
    onTap:()=>Navigator.of(context).popAndPushNamed(HomeScreen.routeName),
  ),
  Divider(),
  ListTile(
leading: Icon(Icons.account_circle),
    title: Text('Complete Profile'),
    onTap: ()=>Navigator.of(context).popAndPushNamed(Profile.routeName),
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.settings),
    title: Text('Settings'),
    onTap:()=>Navigator.of(context).popAndPushNamed(SettingsScreen.routeName),
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.bar_chart_rounded ),
    title: Text('Filter'),
    onTap:()=>Navigator.of(context).popAndPushNamed(FilterScreen.routeName),
  ),
  Divider(),
  ListTile(
    leading: Icon(Icons.exit_to_app),
    title: Text('Logout'),
    onTap: ()=> Navigator.of(context).pushReplacementNamed(LandingPage.routeName),
  ),
],
),
    );
  }
}
