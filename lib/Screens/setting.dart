import 'package:calculator_app/Screens/AppDrawer.dart';
import 'package:flutter/material.dart';
class SettingsScreen extends StatefulWidget {
  static const routeName = '/Settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<bool> _values = [true, false, true, false, true , false];
  @override
  Widget build(BuildContext context) {
    final int count = 5;
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email notification',style: TextStyle(fontSize: 22),),
                  Switch(
                    value: _values[1],
                    onChanged: 1 == count
                        ? null
                        : (bool value) {
                      setState(() {
                        _values[1] = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Push notification',style: TextStyle(fontSize: 22),),
                  Switch(
                    value: _values[2],
                    onChanged: 2 == count
                        ? null
                        : (bool value) {
                      setState(() {
                        _values[2] = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Updates',style: TextStyle(fontSize: 22),),
                  Switch(
                    value: _values[3],
                    onChanged: 3 == count
                        ? null
                        : (bool value) {
                      setState(() {
                        _values[3] = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Seller Info',style: TextStyle(fontSize: 22),),
                  Switch(
                    value: _values[4],
                    onChanged: 4 == count
                        ? null
                        : (bool value) {
                      setState(() {
                        _values[4] = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NewsLetter',style: TextStyle(fontSize: 22),),
                  Switch(
                    value: _values[0],
                    onChanged: 0 == count
                        ? null
                        : (bool value) {
                      setState(() {
                        _values[0] = value;
                      });
                    },
                  ),
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Privacy Policy',style: TextStyle(fontSize: 22),),
                  IconButton(icon: Icon(Icons.arrow_forward_rounded), onPressed: (){})
                ],
              ),
              Divider(color: Colors.black38,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Terms & Conditions',style: TextStyle(fontSize: 22),),
                  IconButton(icon: Icon(Icons.arrow_forward_rounded), onPressed: (){})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
