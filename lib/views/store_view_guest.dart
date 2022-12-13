
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/controllers/backend.dart';
import 'package:mist/widgets/game_button.dart';
import 'package:mist/widgets/launch_game_button.dart';
import 'package:mist/widgets/store_pages.dart';

import '../widgets/search_bar.dart';
import '../widgets/side_bar_guest.dart';

class StoreGuestScaffold extends StatefulWidget {
  const StoreGuestScaffold({super.key, required this.game});

  final Game game;
  @override
  State<StatefulWidget> createState() => _StoreGuestScaffoldState();
}

class _StoreGuestScaffoldState extends State<StoreGuestScaffold> {
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

class StoreGuest extends StatelessWidget {
  const StoreGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              SideBarGuest(),
              const Expanded(child: StoreGuestScaffold(game: gameDefault))
            ],
          ))
        ]),
      );
  }
}
