import 'package:calculator_app/Screens/AppDrawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();
  final FocusNode _cityFocusNode = FocusNode();
  final FocusNode _stateFocusNode = FocusNode();
  final FocusNode _codeFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();

  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _codeController.dispose();
    _phoneController.dispose();
    _nameFocusNode.dispose();
    _addressFocusNode.dispose();
    _cityFocusNode.dispose();
    _stateFocusNode.dispose();
    _codeFocusNode.dispose();
    _phoneFocusNode.dispose();
  }

  String get _name => _nameController.text;

  String get _address => _addressController.text;

  String get _city => _cityController.text;

  String get _state => _stateController.text;

  String get _code => _codeController.text;

  String get _phone => _phoneController.text;

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

    // void checkData() {
    //   if (_name.isEmpty) {
    //     showDialog(
    //       context: context,
    //       builder: (context) => dialog(
    //         title: Text('Error'),
    //         content: Text('Please Enter Your Name'),
    //       ),
    //     );
    //   }else if(_email.isEmpty){
    //     showDialog(
    //       context: context,
    //       builder: (context) => dialog(
    //         title: Text('Error'),
    //         content: Text('Please enter your Email'),
    //       ),
    //     );
    //   }else if(_password.isEmpty){
    //     showDialog(
    //       context: context,
    //       builder: (context) => dialog(
    //         title: Text('Error'),
    //         content: Text('Please enter your Password'),
    //       ),
    //     );
    //   }else{
    //     Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    //   }
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Address'),
      ),
      drawer: AppDrawer(),
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
                        'Hisham Reffat',
                        _nameController,
                        _nameFocusNode,
                        TextInputAction.next,
                        false,
                        TextInputType.name,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      buildTextField(
                        'Address lane',
                        '12 st. california ',
                        _addressController,
                        _addressFocusNode,
                        TextInputAction.next,
                        false,
                        TextInputType.streetAddress,
                      ),
                      buildTextField(
                          'City',
                          'California ',
                          _cityController,
                          _cityFocusNode,
                          TextInputAction.next,
                          false,
                          TextInputType.name),
                      buildTextField(
                        'State',
                        'UnitedState',
                        _stateController,
                        _stateFocusNode,
                        TextInputAction.next,
                        false,
                        TextInputType.name,
                      ),
                      buildTextField(
                        'PostalCode',
                        '11511',
                        _codeController,
                        _codeFocusNode,
                        TextInputAction.next,
                        false,
                        TextInputType.number,
                      ),
                      buildTextField(
                        'Phone Number',
                        '+20 01234567898',
                        _phoneController,
                        _phoneFocusNode,
                        TextInputAction.done,
                        false,
                        TextInputType.number,
                      ),
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
                  height: 50,
                  child: RaisedButton(
                    elevation: 4,
                    onPressed: () {},
                    child: Text(
                      'Add Address',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    color: Colors.deepPurple.shade400,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
