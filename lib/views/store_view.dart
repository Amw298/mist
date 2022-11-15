import 'package:mist/widgets/store_pages.dart';
import 'package:flutter/material.dart';
import 'package:mist/widgets/side_bar.dart';

import '../widgets/db.dart';
import 'store_scaffold.dart';

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
              const Expanded(child: StoreScaffold(game: gameDefault))
            ],
          ))
        ]),
      );
  }
}
