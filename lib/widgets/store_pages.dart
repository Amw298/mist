
import 'package:mist/controllers/backend.dart';
import 'package:mist/widgets/game_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LibraryView extends StatelessWidget {
  final List<GameButton> games = [
    GameButton(
      name: "banana",
      img: Image(image: AssetImage("assets/banana.png")),
    ),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: 4,
      children: [...games],
    ));
  }
}

class StoreFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: StorePageController, children: [StoreView(), LibraryView(), StoreSearch()]);
  }
}
class StoreView extends StatefulWidget {
  final List<GameButton> games = [
    GameButton(
      name: "banana",
      large: true,
      img: Image(image: AssetImage("assets/banana.png")),
    ),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
  ];

  @override
  State<StatefulWidget> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  final games = GameModels();
  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider<GameModels>(
    create: (context) => gm_db,
    child: CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Container(
          child: gm_db.games[0],
          color: Colors.amber,
          height: MediaQuery.of(context).size.height *
              .5, 
        ),
      ),
      SliverGrid.count(
        crossAxisCount: 4,
        children: [
          ...gm_db.games.sublist(1),
        ],
      ),
    ]));
  }
}
class StoreSearch extends StatefulWidget {
  final List<GameButton> games = [
    GameButton(
      name: "banana",
      large: true,
      img: Image(image: AssetImage("assets/banana.png")),
    ),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
    GameButton(),
  ];

  @override
  State<StatefulWidget> createState() => _StoreSearchState();
}

class _StoreSearchState extends State<StoreSearch> {
  @override
  Widget build(BuildContext context) {
  return  Container(
        child: GridView.count(
      crossAxisCount: 4,
      children: [...gm_db.games],
    ));
  }
}
