import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameButton extends StatelessWidget{
  final Image img = const Image(
      image: AssetImage('assets/testinion.jpg'),
      );

  const GameButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ClipRect(
      child: Align(alignment: Alignment.center,
      heightFactor: .8,
      widthFactor: .6,
      child: img,)
      )
      );
  }}