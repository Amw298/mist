import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Center(
        child: Image.asset("assets/backx.png"),
      ),
    );
  }
}