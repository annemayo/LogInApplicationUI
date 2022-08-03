import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

//First screen to be displayed when app is loaded

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool _isVisisble = false;

  _SplashScreenState() {
    //splash screen duration
    new Timer(const Duration(milliseconds: 330000), () {
      setState(() {
        //redirecting to login page after time lapse
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
      });
    });

    new Timer(
      Duration(milliseconds: 10), (){
        setState(() {
          _isVisisble = true;
        });
      };
  }

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
        //opcaity after duration if splash screen = false
        opacity: _isVisisble ? 1.0 : 0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          //splash screen icon container
          child: Container(
            height: 140.0, //dimensions
            width: 140.0,
            child: Center(
              child: ClipOval(
                //clip or pin icon on splash screen

                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/MTN-logo.jpg/841px-MTN-logo.jpg',
                  fit: BoxFit.fitHeight,
                ),

                // child: Icon(
                //   Icons.widgets,
                //   size: 100,
                // ),
              ),
            ),
            // decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(22)), color: Colors.white, boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.3),
            //     blurRadius: 4.0,
            //     offset: Offset(5.0, 3.0),
            //     spreadRadius: 1.0,
            //   )
            // ]),
          ),
        ),
      ),
    );
  }
}
