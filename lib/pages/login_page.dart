import 'package:flutter/material.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250; //header height variable
  Key _formKey = GlobalKey<FormState>(); //neccessary for form validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //content feet on screen of var sizes
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                //HEADER
                child: HeaderWidget(_headerHeight, true, Icons.login_sharp),
              ),
              SafeArea(
                //Log in form
                child: Container(
                  child: Column(
                    children: [
                      Text('Hello', style: TextStyle(fontSize: 57, fontWeight: FontWeight.bold)),

                      //login Form
                      SizedBox(height: 30.0),
                      Form(

                          //validation
                          key: _formKey,
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(labelText: 'User Name', hintText: 'User name goes here !', fillColor: Colors.white, filled: true),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
