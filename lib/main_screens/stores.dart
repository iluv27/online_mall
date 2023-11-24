import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AppBarTitle(title: 'Stores'),
        centerTitle: true,
      ),
    );
  }
}
