import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Wishlist'),
      ),
    );
  }
}
