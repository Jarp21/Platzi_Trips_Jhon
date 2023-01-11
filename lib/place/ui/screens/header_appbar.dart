import 'package:flutter/material.dart';
import '../../../witgets/gradient_back.dart';
import '../witgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  const HeaderAppBar({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido", 250),
        CardImageList()
      ],
    );
  }

}