import 'package:ar_rahman/app/utility/app_colors/appcolors.dart';
import 'package:flutter/material.dart';

class BackroundScreen extends StatelessWidget {

  final body;

  const BackroundScreen({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
