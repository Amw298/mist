import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/widgets/db.dart';
import 'package:mist/widgets/game_grid.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key, required this.game});

  final Game game;
  @override
  State<StatefulWidget> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    var appbarcolor = Theme.of(context).backgroundColor;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // method to show the search bar
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: SearchBar());
          },
          icon: Icon(Icons.search, color: Theme.of(context).iconTheme.color),
        ),
        backgroundColor: appbarcolor,
        foregroundColor: appbarcolor,
        shadowColor: Colors.transparent,
        actions: [],
      ),
      body: Container(
          color: Theme.of(context).backgroundColor, child: GameGrid()),
    );
  }
}

class SearchBar extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(
          Icons.clear,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(
        Icons.arrow_back,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Container( color: Theme.of(context).backgroundColor, child: ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          
          title: Text(result),
        );
      },
    )
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Container( color:Theme.of(context).backgroundColor, child:  ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    ));
  }
}
