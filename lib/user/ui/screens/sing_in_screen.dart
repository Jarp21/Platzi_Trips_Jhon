import 'package:flutter/material.dart';
import 'package:plstzi_trips_app/witgets/gradient_back.dart';
import 'package:plstzi_trips_app/witgets/button_green.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", MediaQuery.of(context).size.height),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, this is your Travel app',
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(onPressed: () {}, height: 50, width: 300, text: 'Login with Gmail')
            ],
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return signInGoogleUI();
  }



}
