import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/logo-color.png",
        height: MediaQuery.of(context).size.height*.5, width: MediaQuery.of(context).size.width*.5
        )
    );
  }
}
