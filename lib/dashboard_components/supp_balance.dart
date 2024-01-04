import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Balance Screen'),
      ),
    );
  }
}
