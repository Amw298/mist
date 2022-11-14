import 'package:mist/widgets/game_grid.dart';
import 'package:flutter/material.dart';
import 'package:mist/widgets/side_bar.dart';

import '../widgets/db.dart';
import 'library_view.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              SideBar(),
              const Expanded(child: LibraryView(game: gameDefault))
            ],
          ))
        ]),
      );
  }
}
