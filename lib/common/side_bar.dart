import 'package:mist/common/game_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mist/store.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width * 0.2,
        color: const Color.fromARGB(255, 255, 0, 85),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/testinion.jpg", // replace with mist logo
                height: 55.0,
                filterQuality: FilterQuality.high,
              ),
            ]),
             _SideBarTab(title: "Store",
            iconData: Icons.store,
            onTap: () {},
            ),
            _SideBarTab(title: "Library",
            iconData: Icons.library_books,
            onTap: () {},
            )
          ],
        ));
  }
}

class _SideBarTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  
  const _SideBarTab({
    Key? key, required this.iconData, required this.title, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
      iconData,
      color: Colors.black,
      size: 30.0, ),
      title: Text(
      title,
      style: Theme.of(context).textTheme.bodyText1,
      overflow: TextOverflow.ellipsis
      ),
      onTap: onTap,
    );
  }
}
