import 'package:mist/common/game_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class GameGrid extends StatelessWidget{
  final List<GameButton> games = [
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),    GameButton(),
    GameButton(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 1.0,
        children: [...games],));
  }
}