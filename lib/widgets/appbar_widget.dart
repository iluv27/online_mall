// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          fontFamily: 'Acme',
          letterSpacing: 3),
    );
  }
}
