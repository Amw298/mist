import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/common/db.dart';
import 'package:mist/common/game_grid.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key, required this.game});

  final Game game;
  @override
  State<StatefulWidget> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: appbarcolor,
        foregroundColor: appbarcolor,
        shadowColor: Colors.transparent,
      ),
      body: Container(
          color: Theme.of(context).backgroundColor, child: GameGrid()),
    );
  }
}
