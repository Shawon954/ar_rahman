import 'package:flutter/material.dart';

import '../../modules/homepage/views/homepage_view.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return HomepageView();
  }
}
