import 'package:flutter/material.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250; //header height variable

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
                      Text('Welcome', style: TextStyle(fontSize: 60, fontStyle: FontStyle.italic))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
