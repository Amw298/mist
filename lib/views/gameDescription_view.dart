import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mist/widgets/explore_button.dart';
import 'package:mist/widgets/login_button.dart';
import 'package:mist/widgets/register_button.dart';
import 'package:mist/widgets/home_logo.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class GameDescription extends StatelessWidget {
  GameDescription({super.key});

  static double widthSpacing = 15;
  static double heightSpacing = 15;
  static double pictureHeight = 180;
  static double pictureWidth = 320;
  static double bannerHeight = 347;
  static double bannerWidth = 1445;

  String description = "";

  final images = [
    "assets/rampageBanner.png",
    "assets/testinion.jpg",
    "assets/banana.png",
    "assets/testinion.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: InstaImageViewer(child: Image.asset(images[0], scale: .5,)),
          height: bannerHeight,
          width: bannerWidth,
          left: widthSpacing,
          top: heightSpacing,
          ),
        Positioned(
          child: InstaImageViewer(child: Image.asset(images[1])),
          height: pictureHeight,
          width: pictureWidth,
          left: widthSpacing,
          top: (heightSpacing * 2) + bannerHeight,
        ),
        Positioned(
          child: InstaImageViewer(child: Image.asset(images[2])),
          height: pictureHeight,
          width: pictureWidth,
          left: widthSpacing + pictureWidth,
          top: (heightSpacing * 2) + bannerHeight,
        ),
        Positioned(
          child: InstaImageViewer(child: Image.asset(images[3])),
          height: pictureHeight,
          width: pictureWidth,
          left: widthSpacing + (2 * pictureWidth),
          top: (heightSpacing * 2) + bannerHeight,
        ),
        Positioned(
          child: Container(
            child: Material(
              type: MaterialType.transparency,
              child: Text(
                "     This is a test!",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          height: 180,
          width: 320,
          left: widthSpacing,
          bottom: heightSpacing,
        ),
      ],
    );
  }
}
