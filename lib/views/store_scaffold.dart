import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/widgets/db.dart';
import 'package:mist/widgets/game_button.dart';
import 'package:mist/widgets/store_pages.dart';

class StoreScaffold extends StatefulWidget {
  const StoreScaffold({super.key, required this.game});

  final Game game;
  @override
  State<StatefulWidget> createState() => _StoreScaffoldState();
}

class _StoreScaffoldState extends State<StoreScaffold> {
  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * .4,
        leading: SearchBar(),
        backgroundColor: appbarcolor,
        foregroundColor: appbarcolor,
        shadowColor: Colors.transparent,
      ),
      body: Container(
          color: Theme.of(context).backgroundColor, child: StoreFront()),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String s) async {
        if(s==''){
          gm_db.clear();
        }
        if(s=='banana'){
           await gm_db.search(s);
          pageController.jumpToPage(2);
        }
        if(s == "clear"){
          pageController.jumpToPage(1);
        }
        
      },// this is where we can add the drop down
      autofocus: true,
      cursorColor: Colors.white,
      style: Theme.of(context).textTheme.bodyText1,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        filled: true,
        fillColor:Theme.of(context).hintColor ,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Theme.of(context).hintColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),

            borderSide: BorderSide(color: Theme.of(context).hintColor)),
        hintText: 'Search for games...',
        hintStyle: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
