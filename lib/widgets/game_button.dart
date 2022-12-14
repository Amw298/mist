import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/controllers/backend.dart';
import 'package:mist/views/game_description_view.dart';

class GameButton extends StatelessWidget {
  final int index;
  final Image img;
  final Image bannerimg;
  bool large;
  final String name;
  GameDescription gameDescription;
  GameButton(
      {super.key,
      this.index =0,
      this.large = false,
      this.name = "Slime Rampage",
      this.img = const Image(
        image: AssetImage('assets/SlimeRampage.jpg'),
      ),
        this.bannerimg = const Image(
        image: AssetImage('assets/rampageBanner.png'),
      ),
      required this.gameDescription});
  setLarge(bool l) {
    large = l;
  }

  @override
  Widget build(BuildContext context) {
    if (!large) {
      return Center(
          child: InkWell(
              onTap: () {
                currentgame = index;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gameDescription));
              },
                child: ClipRect(
                  child: Align(
                alignment: Alignment.center,
                heightFactor: .8,
                widthFactor: .6,
                child: img,
              ))));
    } else {
      return Center(
        child: InkWell(
              onTap: () {
                                currentgame =index;

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gameDescription));
              },
          child: ClipRect(
              child: Align(
        alignment: Alignment.center,
        heightFactor: 1,
        widthFactor: 2,
        child: bannerimg,
      ))));
    }
  }
}
