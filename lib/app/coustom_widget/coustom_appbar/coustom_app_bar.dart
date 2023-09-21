import 'package:ar_rahman/app/coustom_widget/coustom_appbar/button_navbar.dart';
import 'package:ar_rahman/app/coustom_widget/coustom_appbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdaptiveNavBar extends AppBar {
  /// [canTitleGetTapped]
  final bool canTitleGetTapped;



  /// [onTitleTapped]
  final void Function()? onTitleTapped;

  /// Based on [screenWidth], the 'AdaptiveNavBar' decides
  /// which widget it should be displayed
  ///
  /// If `screenWidth < 700` it displays [NavBarSmall]
  /// else it displays [NavBarWide]
  final double? screenWidth;

  /// [navBarItems] instead of [actions] in `AppBar`
  ///
  /// The list of navBarItems of type `List<NavBarItem>`
  final List<NavBarItem> navBarItems;

  /// `AdaptiveNavBar`'s named constructor
  AdaptiveNavBar({
    this.canTitleGetTapped = false,
    this.onTitleTapped,
    required this.screenWidth,
    required this.navBarItems,
    Key? key,
    Widget? title,
    Widget? leading,
    bool automaticallyImplyLeading = true,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    Color? shadowColor,
    ShapeBorder? shape,
    Color? backgroundColor,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
  }) : super(
    key: key,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: canTitleGetTapped
          ? InkWell(
        onTap: onTitleTapped,
        child: title ??
            const Text(
              "MB NavBar",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.purple
              ),
            ),
      )
          : title ??
          const Text(
            "MB NavBar",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.purple
            ),
          ),
    ),



    actions: [

      screenWidth! <800.toDouble()
          ? NavBarSmall(
        navBarItems: navBarItems,

      )
          : NavBarWide(
        navBarItems: navBarItems,
      ),

    ],
    leading: leading,
    automaticallyImplyLeading: automaticallyImplyLeading,
    flexibleSpace: flexibleSpace,
    bottom: bottom,
    elevation: elevation,
    shadowColor: shadowColor,
    shape: shape,
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
    iconTheme: iconTheme,
    actionsIconTheme: actionsIconTheme,
    primary: primary,
    centerTitle: centerTitle,
    excludeHeaderSemantics: excludeHeaderSemantics,
    titleSpacing: titleSpacing,
    toolbarOpacity: toolbarOpacity,
    bottomOpacity: bottomOpacity,
    toolbarHeight: toolbarHeight,
    leadingWidth: leadingWidth,
    toolbarTextStyle: toolbarTextStyle,
    titleTextStyle: titleTextStyle,
    systemOverlayStyle: systemOverlayStyle,
  );
}