import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:mist/views/store_scaffold.dart';

import 'game_button.dart';

class Game {
  final Image img;
  final String name;
  const Game({required this.img, this.name = "coolgame"});
}

const gameDefault = Game(
    img: Image(
  image: AssetImage('assets/testinion.jpg'),
));
PageController pageController = PageController();
const logo = Image(image: AssetImage('assets/testinion.jpg'));
const db_games = [
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  )),
  Game(
      img: Image(
        image: AssetImage('assets/banana.png'),
      ),
      name: "banana"),
  Game(
      img: Image(
    image: AssetImage('assets/testinion.jpg'),
  ))
];


class GameModels extends ChangeNotifier{
  List<GameButton> _games = db_game_buttons;

  UnmodifiableListView<GameButton> get games => UnmodifiableListView(_games);
  Future<void> search(String string) async {
    List<GameButton> newgames =[];
    for(GameButton g in _games){
      if(g.name.contains(string)){
        newgames.add(g);
      }
    }
    _games = newgames;
    notifyListeners();
  }
  void clear(){
       _games = db_game_buttons;
    notifyListeners();
  }

}
List<GameButton> db_game_buttons = [
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
    GameButton(),
  ];
  GameModels gm_db = GameModels();