import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/blue-line.png",
        height: MediaQuery.of(context).size.height*.05, width: MediaQuery.of(context).size.width*.05
        )
    );
  }
}
