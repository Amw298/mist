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
    var appbarcolor = Colors.purple;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        foregroundColor: appbarcolor,
        shadowColor: Colors.transparent,
      ),
      body: Container(
          color: const Color.fromARGB(255, 0, 255, 8), child: GameGrid()),
    );
    // return Scaffold(
    //         appBar: AppBar(
    //           backgroundColor: Colors.red,
    //           elevation: 0,
    //         ),
    //         body: Expanded(
    //           child: Container(
    //             height: double.infinity,
    //             width: MediaQuery.of(context).size.width * 0.8,
    //             color: const Color.fromARGB(255, 0, 255, 8),
    //             child: GameGrid(),
    //           ),
    //         ));
  }
}
