
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/controllers/backend.dart';
import 'package:mist/widgets/game_button.dart';
import 'package:mist/widgets/launch_game_button.dart';
import 'package:mist/widgets/store_pages.dart';

import '../widgets/search_bar.dart';
import '../widgets/side_bar.dart';

class StoreScaffold extends StatefulWidget {
  const StoreScaffold({super.key, required this.game});

  final Game game;
  @override
  State<StatefulWidget> createState() => _StoreScaffoldState();
}

class _StoreScaffoldState extends State<StoreScaffold> {
  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * .4,
        leading: SearchBar(),
        actions: [LaunchGameButton()],
        backgroundColor: appbarcolor,
        foregroundColor: appbarcolor,
        shadowColor: Colors.transparent,
      ),
      body: Container(
          color: Theme.of(context).backgroundColor, child: StoreFront()),
    );
  }
}

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
