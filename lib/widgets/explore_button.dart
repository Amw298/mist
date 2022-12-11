import 'package:flutter/material.dart';
import 'package:mist/views/gameDescription_view.dart';
import 'package:mist/views/store_view.dart';
import 'package:mist/widgets/store_pages.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Store()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.02, vertical: MediaQuery.of(context).size.height*.01),
        child: Text(
          "Explore the Site",
          style: TextStyle(
          fontSize: MediaQuery.of(context).size.height*.02,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
        color: Color(0xff1681ab),
        borderRadius: BorderRadius.circular(5)),
      )
    );
  }
}
