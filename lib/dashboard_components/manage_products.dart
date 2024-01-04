import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class ManageProducts extends StatelessWidget {
  const ManageProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Manage Products'),
      ),
    );
  }
}
