import 'package:ar_rahman/app/coustom_widget/coustom_appbar/navbar.dart';
import 'package:flutter/material.dart';

class NavBarSmall extends StatelessWidget {
  /// [navBarItems] is converted to a
  /// popupmenubutton in phone view
  final List<NavBarItem> navBarItems;

  /// `NavBarSmall`'s named constructor
  const NavBarSmall({
    Key? key,
    required this.navBarItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return List.generate(
            navBarItems.length,
                (index) => PopupMenuItem(
              child: navBarItems[index],
            ),
          );
        },
        child: const Icon(
          Icons.menu,
        ),
      ),
    );
  }
}
class NavBarWide extends StatelessWidget {
  /// [navBarItems] are converted to wide navbar
  final List<NavBarItem> navBarItems;

  /// `NavBarWide`'s named constructor
  const NavBarWide({
    Key? key,
    required this.navBarItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      color: Colors.transparent,
      width: sw /2,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: List.generate(
            navBarItems.length,
                (index) {
              return Expanded(
                child: navBarItems[index],
              );
            },
          ),

        ),
      ),
    );
  }
}