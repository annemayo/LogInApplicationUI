import 'package:flutter/cupertino.dart';
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
    //container for whole splash screen
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor,
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [
            0.0,
            1.0
          ],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          //splash screen icon container
          child: Container(
            height: 140.0, //dimensions
            width: 140.0,
            child: Center(
              child: ClipOval(
                //clip or pin icon on splash screen

                // child: Image.network(
                //   'https://www.seekpng.com/png/full/69-691715_mtn-mm-logo-generic-mtn-mobile-money-logo.png',
                //   fit: BoxFit.fitHeight,
                // ),

                child: Icon(
                  Icons.widgets,
                  size: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
