import 'package:calculator_app/Screens/HomeScreen.dart';
import 'package:calculator_app/Screens/Loginpage.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/sign_up';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  String get _name => _nameController.text;

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
      if (_name.isEmpty) {
        showDialog(
          context: context,
          builder: (context) => dialog(
            title: Text('Error'),
            content: Text('Please Enter Your Name'),
          ),
        );
      } else if (_email.isEmpty) {
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
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                          'Name',
                          'Enter your name',
                          _nameController,
                          _nameFocusNode,
                          TextInputAction.next,
                          false,
                          TextInputType.name,
                      check: (value) => EmailValidator.validate(value) ? null : "Please enter a valid email",),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextField(
                          'Email',
                          'Example@example.com',
                          _emailController,
                          _emailFocusNode,
                          TextInputAction.next,
                          false,
                          TextInputType.emailAddress),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextField(
                          'Password',
                          '************',
                          _passwordController,
                          _passwordFocusNode,
                          TextInputAction.done,
                          true,
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
                      'SignUp',
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
                  Text('Already have an account?'),
                  FlatButton(
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed(LoginPage.routeName),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildTextField(
    String label,
    String hint,
    TextEditingController controller,
    FocusNode focus,
    TextInputAction action,
    bool obscure,
    TextInputType type, {
    FormFieldValidator check,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
      controller: controller,
      focusNode: focus,
      obscureText: obscure,
      textInputAction: action,
      keyboardType: type,
      validator: check,
    );
  }
}
