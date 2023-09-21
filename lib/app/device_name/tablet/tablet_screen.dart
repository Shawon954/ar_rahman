import 'package:flutter/material.dart';

import '../../modules/homepage/views/homepage_view.dart';

class Tab extends StatefulWidget {
  const Tab({super.key});

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  @override
  Widget build(BuildContext context) {
    return HomepageView();
  }
}
