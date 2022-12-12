
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/backend.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (String s) async {
        if(s==''){
          gm_db.clear();
          StorePageController.jumpToPage(0);

        }else{
          await gm_db.search(s);
          StorePageController.jumpToPage(2);
        }
      },
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