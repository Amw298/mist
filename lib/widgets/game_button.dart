import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/controllers/backend.dart';

class GameButton extends StatelessWidget {
  final Image img;
  bool large;
  final String name;
  GameButton(
      {super.key,
      this.large = false,
      this.name ="minion",
      this.img = const Image(
        image: AssetImage('assets/testinion.jpg'),
      )});
  setLarge(bool l){
    large=l;
  }

  @override
  Widget build(BuildContext context) {
    if (!large) {
      return Center(
          child: ClipRect(
              child: Align(
        alignment: Alignment.center,
        heightFactor: .8,
        widthFactor: .6,
        child: img,
      )));
    } else {
      return Center(
          child: ClipRect(
              child: Align(
        alignment: Alignment.center,
        heightFactor: 1,
        widthFactor: 2,
        child: img,
      )));
    }
  }
}
