import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {

  String text;
  double width;
  double height;
  VoidCallback onPressed;

  ButtonGreen({Key? key, required this.onPressed, required this.height, required this.width, required this.text});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonGreen(onPressed: onPressed, height: height, width: width, text: text);
  }
}

class _ButtonGreen extends State<ButtonGreen> {

  String text;
  double width;
  double height;
  VoidCallback onPressed;

  _ButtonGreen({Key? key, required this.onPressed, required this.height, required this.width, required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFCC636E),
                  Color(0xFFE09393)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            ),
        ),

        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),

          ),
        ),

      ),
    );
  }
}
