import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pages/splash_screen.dart';

void main() => runApp(App1LogInUI());

class App1LogInUI extends StatelessWidget {
  //log in primary colours
  Color _primaryColor = HexColor('#fcd862');
  Color _accentColor = HexColor('#ffcc03');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Momo Cash App',
      theme: ThemeData(
        //primary color variables
        primaryColor: _primaryColor,
        accentColor: _accentColor,

        //background for main screen
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.yellow,
      ),
      home: SplashScreen(title: 'Momo Cash App'),
    );
  }
}
