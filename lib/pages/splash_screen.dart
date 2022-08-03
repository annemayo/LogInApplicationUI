import 'package:flutter/material.dart';

//First screen to be displayed when app is loaded

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'HI',
            ),
          ],
        ),
      ),
    );
  }
}
