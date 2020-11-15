import 'package:calculator_app/Screens/AppDrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        //   onPressed: () => print('hello'
        //   ),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Container(
          child: Text(
            'Hello There..!',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
