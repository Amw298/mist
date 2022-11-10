
import 'package:flutter/cupertino.dart';

class Game{
  final Image img;
  const Game({required this.img});
}
const gameDefault = Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      );
const logo = Image(image: AssetImage('assets/testinion.jpg'));
const _games = [
     Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),
      Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      ),Game(img:Image(
      image: AssetImage('assets/testinion.jpg'),)
      )
];