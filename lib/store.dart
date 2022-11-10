import 'package:mist/common/game_grid.dart';
import 'package:flutter/material.dart';
import 'package:mist/common/side_bar.dart';

import 'common/db.dart';
import 'common/store_view.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Row(
          children:[SideBar(), 
          const Expanded(child:LibraryView(game:gameDefault ))],
        ))
      ]),
    );
  }
}


