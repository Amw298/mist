import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:mist/views/game_description_view.dart';
import 'package:mist/views/store_view.dart';
import '../widgets/game_button.dart';

class Game {
  final Image img;
  final String name;
  const Game({required this.img, this.name = "coolgame"});
}

const gameDefault = Game(
    img: Image(
  image: AssetImage('assets/testinion.jpg'),
));
PageController StorePageController = PageController();
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
    newgames[0].large =false;
    _games = newgames;
    notifyListeners();
  }
    Future<void> buy(int index) async {
    List<GameButton> newgames =[];
    
    for(GameButton g in _games){
      if(g.index ==index){
        g.gameDescription.owned =true;
      }
      newgames.add(g);
    }
    
    _games = newgames;

    notifyListeners();
  }

  void clear(){

       _games = db_game_buttons;
       _games[0].large = true;
    notifyListeners();
  }

}
int currentgame = 14;
List<GameButton> db_game_buttons = [
    GameButton(index: 0,
      gameDescription: GameDescription(),large: true,),
    pizzagame,
    GameButton(index: 1,
      gameDescription: GameDescription()),
    GameButton(
      index: 2,
      gameDescription: gnome,
      name: "gnome",
      large: false,
      img: const Image(image: AssetImage("assets/GnomeGame.jpg")),),
    GameButton(index: 3,
      gameDescription: GameDescription()),
    GameButton(index: 4,
      gameDescription: GameDescription()),
     GameButton(index: 5,
      gameDescription: gnome2,
      name: "gnome2",
      large: false,
      img: const Image(image: AssetImage("assets/GnomeGame2.jpg")),),
    GameButton(index: 6,
      gameDescription: GameDescription()),
     GameButton(index: 7,
      name: "gnome2",
      large: false,
      img: const Image(image: AssetImage("assets/GnomeGame2.jpg")),
      gameDescription: gnome2),
    GameButton(
      index: 8,
      gameDescription: GameDescription()),
    testinion,
    testinion,
    GameButton(
      index: 9,
      gameDescription: GameDescription()),
    GameButton(
      index: 10,
      name: "gnome",
      large: false,
      img: const Image(image: AssetImage("assets/GnomeGame.jpg")),
      gameDescription: gnome,),
    GameButton(      
      index: 11,

      gameDescription: GameDescription(),),
    GameButton(
      index: 12,
    name: "minion",
    img: const Image(image: AssetImage("assets/testinion.jpg")),
    large: false,
    gameDescription: GameDescription(description: lorem,
    images: ["assets/testinionBanner.png","assets/banana.png","assets/banana.png","assets/banana.png"],
    playable: false,
    owned: false,
    )),
  ];
  GameModels gm_db = GameModels();

  GameButton testinion = GameButton(
    name: "minion",
    img: const Image(image: AssetImage("assets/testinion.jpg")),
    large: false,
    gameDescription: GameDescription(description: lorem,
    images: ["assets/testinionBanner.png","assets/banana.png","assets/banana.png","assets/banana.png"],
    playable: false,
    owned: false,
    ),

  );

    GameButton pizzagame = GameButton(
      name: "pizza",
      large: false,
      img: const Image(image: AssetImage("assets/pizzagame.jpg")),
      gameDescription:GameDescription(description: lorem,
      images: ["assets/pizzaBanner.png","assets/pizzagame.jpg","assets/pizzagame.jpg","assets/pizzagame.jpg"],
      playable: true,
      owned: true,
      ),
      );

  GameDescription gnome =  GameDescription(description: "Really cool game about a gnome. Check it out!",
      images: ["assets/GnomeBanner.png","assets/banana.png","assets/GnomeGame.jpg","assets/banana.png","assets/GnomeGame2.jpg" ],
      owned: true,
      playable: true,
      );
    GameDescription gnome2 =  GameDescription(
      description: "Really cool game about a gnome. Check it out! A sequel to the original",
      images: ["assets/GnomeBanner2.png","assets/banana.png","assets/GnomeGame2.jpg","assets/banana.png","assets/GnomeGame2.jpg"],
      owned: false,
      playable: true,
      );    

String lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";