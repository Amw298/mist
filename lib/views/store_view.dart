import 'package:mist/widgets/game_grid.dart';
import 'package:flutter/material.dart';
import 'package:mist/widgets/side_bar.dart';

import '../widgets/db.dart';
import 'library_view.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: Colors.grey.shade900,
        backgroundColor: Colors.grey.shade900,
        primaryColor: Colors.grey.shade900,
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline2: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 12.0,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyText1: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyText2: TextStyle(
            color: Colors.grey.shade500,
            letterSpacing: 1.0,
          ),
        ),
      ),
      child: Scaffold(
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              SideBar(),
              const Expanded(child: LibraryView(game: gameDefault))
            ],
          ))
        ]),
      ),
    );
  }
}
