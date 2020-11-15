import 'package:calculator_app/Screens/Loginpage.dart';
import 'package:calculator_app/Screens/SignupPage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  static const routeName = '/landing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/online-store.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 80, top: 50),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enjoy the experience',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                      ),
                      Row(
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 250,
                                child: RaisedButton(
                                  onPressed: ()=> Navigator.of(context).pushNamed(LoginPage.routeName),
                                  child: Text('Login' , style: TextStyle(color: Colors.white),),
                                  color: Colors.deepPurple.shade400,
                                  elevation: 4,
                                ),
                              ),
                              FlatButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(SignUp.routeName),
                                child: Text('SignUp'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
