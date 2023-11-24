import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class SubCategProducts extends StatelessWidget {
  const SubCategProducts(
      {super.key, required this.maincategName, required this.subcategName});

  final String maincategName;
  final String subcategName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.5,
          title: AppBarTitle(title: subcategName),
        ),
        body: Center(
          child: Text(maincategName),
        ));
  }
}
