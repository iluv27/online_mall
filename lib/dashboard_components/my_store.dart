import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'My Store'),
      ),
    );
  }
}
