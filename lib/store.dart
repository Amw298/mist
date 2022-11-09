 import 'package:mist/common/game_button.dart';
import 'package:mist/common/game_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget{
  const Store({super.key});


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
        Expanded(child: Row(children: [
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.2,
            color: Color.fromARGB(255, 255, 0, 85),
          ),
          Expanded( child: Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.8,
            color: Color.fromARGB(255, 0, 255, 8),
            child: GameGrid(),
          ),)
        ],)
        )
      ]),
    );
  }
}