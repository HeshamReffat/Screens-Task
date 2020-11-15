import 'package:calculator_app/Screens/SignupPage.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/Login';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  String get _email => _emailController.text;

  String get _password => _passwordController.text;

  @override
  Widget build(BuildContext context) {
    Widget dialog({Widget title, Widget content}) {
      return AlertDialog(
        title: title,
        content: content,
        actions: [
          FlatButton(
            child: Text('ok'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    }

    void checkData() {
      if (_email.isEmpty) {
        showDialog(
          context: context,
          builder: (context) => dialog(
            title: Text('Error'),
            content: Text('Please enter your Email'),
          ),
        );
      } else if (_password.isEmpty) {
        showDialog(
          context: context,
          builder: (context) => dialog(
            title: Text('Error'),
            content: Text('Please enter your Password'),
          ),
        );
      } else {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    buildTextField(
                        'Email',
                        'Example@example.com',
                        false,
                        _emailController,
                        _emailFocusNode,
                        TextInputAction.next,
                        TextInputType.emailAddress),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextField(
                        'Password',
                        '************',
                        true,
                        _passwordController,
                        _passwordFocusNode,
                        TextInputAction.done,
                        TextInputType.number),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 40,
                child: RaisedButton(
                  elevation: 4,
                  onPressed: () => checkData(),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  color: Colors.deepPurple.shade400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                FlatButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(SignUp.routeName),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextField buildTextField(
    String label,
    String hint,
    bool obscure,
    TextEditingController controller,
    FocusNode focus,
    TextInputAction action,
    TextInputType type,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
      obscureText: obscure,
      textInputAction: action,
      focusNode: focus,
      keyboardType: type,
    );
  }
}
