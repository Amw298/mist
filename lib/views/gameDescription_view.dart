// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mist/widgets/buy_button.dart';
import 'package:mist/widgets/launch_game_button.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class GameDescription extends StatefulWidget {
  const GameDescription({
    super.key,
    this.images = const [
      "assets/rampageBanner.png",
      "assets/banana.png",
      "assets/banana.png",
      "assets/banana.png"
    ],
    this.description =
        "Great game! Was a bit wary due to the bugs and crashing in the Beta, however on launch and with the right patching Fatshark have provided me personally - a very addictive loop to dive into. I would say this is now my go to FPS for when I need to unleash some finger trigger itch. The game feels like its the opening part of a much bigger saga, I would love to see where Fatshark take this game, the DLC, the maps and the enemies. Please make sure to add more variety to everything, the base stuff currently is great, but can get a bit old once you are at max lvl (so far). The crafting is on its way, which is great. Would have been nice to have it running smoothly with that included at launch. I hope they build more parts of the planet, and create more intricate locations, more character choices perhaps? And even the chance to be a space marine? It's definitely worth the price tag, and again - I am enjoying and going back regularly to get a fix. The combat is amazing, you know when you've decimated several hundred enemy. The feedback loop is very good.",
    this.playable = false,
    this.owned = true,
  });

  final List<String> images;
  final String description;
  final bool playable;
  final bool owned;

  @override
  State<StatefulWidget> createState() => _GameDescription();
}

class _GameDescription extends State<GameDescription> {
  static double widthSpacing = 25;
  static double heightSpacing = 25;
  static double pictureHeight = 214;
  static double pictureWidth = 380;
  static double bannerHeight = 347;
  static double bannerWidth = 1445;
  static double playableHeight = 150;
  static double playableWidth = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: <Widget>[
          Positioned(
            height: bannerHeight,
            width: bannerWidth,
            left: widthSpacing,
            top: heightSpacing,
            child: InstaImageViewer(child: Image.asset(widget.images[0])),
          ),
          Positioned(
            height: pictureHeight,
            width: pictureWidth,
            left: 3 * widthSpacing,
            top: (heightSpacing * 2) + bannerHeight,
            child: InstaImageViewer(child: Image.asset(widget.images[1])),
          ),
          Positioned(
            height: pictureHeight,
            width: pictureWidth,
            left: (6 * widthSpacing) + pictureWidth,
            top: (heightSpacing * 2) + bannerHeight,
            child: InstaImageViewer(child: Image.asset(widget.images[2])),
          ),
          Positioned(
            height: pictureHeight,
            width: pictureWidth,
            left: (9 * widthSpacing) + (2 * pictureWidth),
            top: (heightSpacing * 2) + bannerHeight,
            child: InstaImageViewer(child: Image.asset(widget.images[3])),
          ),
          Positioned(
            height: bannerHeight,
            width: bannerWidth,
            left: widthSpacing,
            top: (heightSpacing * 4) + bannerHeight + pictureHeight,
            child: Material(
              type: MaterialType.transparency,
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Positioned(
            right: widthSpacing * 4,
            top: (heightSpacing + bannerHeight) / 2,
            child: buyOrLaunch(),
          ),
          Positioned(
            height: playableHeight,
            width: playableWidth,
            right: widthSpacing * 4,
            top: (heightSpacing * 4) + bannerHeight + pictureHeight,
            child: playableOrNotPlayable(),
          )
        ],
      ),
    );
  }

  playableOrNotPlayable() {
    if (widget.playable) {
      return InstaImageViewer(child: Image.asset('assets/greencheck.png'));
    } else {
      return InstaImageViewer(child: Image.asset('assets/redx.png'));
    }
  }

  buyOrLaunch() {
    if (widget.owned) {
      return const LaunchGameButton();
    } else {
      return const BuyButton();
    }
  }
}
