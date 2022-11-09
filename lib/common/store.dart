 import 'package:mist/common/game_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store2 extends StatelessWidget{
  const Store2({super.key});


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return
            CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Container(
                  child: const GameButton(),
                  color: Color.fromARGB(255, 78, 100, 79),
                  width: constraints.maxWidth * .3,
                  height: constraints.maxHeight*.5,// amount of height you want or the widget you like to include with `ConstrainedBox`
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 4,
                children: [
                  ...List.generate(
                    11,
                    (index) => const GameButton(),
                  )
                ],
              ),
            ]);
      }),
    );
  }
}