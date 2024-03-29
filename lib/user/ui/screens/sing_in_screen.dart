import 'package:flutter/material.dart';
import 'package:plstzi_trips_app/witgets/gradient_back.dart';
import 'package:plstzi_trips_app/witgets/button_green.dart';
import 'package:plstzi_trips_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plstzi_trips_app/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {

  late UserBlog userBlog;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBlog = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: userBlog.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          }
          else {
            return PlatziTripsCupertino();
          }
        }
    );
  }

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
              ButtonGreen(
                  onPressed: () {
                    userBlog.signIn().then((UserCredential user) => print('El usuario es ${user.credential  }'));
                }, height: 50, width: 300, text: 'Login with Gmail')
            ],
          )
        ],
      ),
    );
  }


}
