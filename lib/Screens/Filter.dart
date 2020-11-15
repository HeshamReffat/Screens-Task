import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'AppDrawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/Filter';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> _values = [true, false, true, false, true, false];
  @override
  Widget build(BuildContext context) {
    final int count = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Budget'),
                  LinearPercentIndicator(
                    width: 170.0,
                    lineHeight: 14.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                  Text('450\$'),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Boys',
                    style: TextStyle(fontSize: 22),
                  ),
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
              Divider(
                color: Colors.black38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Girls',
                    style: TextStyle(fontSize: 22),
                  ),
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
              Divider(
                color: Colors.black38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New',
                    style: TextStyle(fontSize: 22),
                  ),
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
              Divider(
                color: Colors.black38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Used',
                    style: TextStyle(fontSize: 22),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
