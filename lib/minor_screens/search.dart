import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const CupertinoSearchTextField(
            // elevation: MaterialStatePropertyAll(0),
            // leading: Icon(Icons.search),
            // hintText: 'What do you want?',
            // side: MaterialStatePropertyAll(
            //     BorderSide(width: 1, color: Colors.black87)),
            ),
      ),
      body: const Placeholder(),
    );
  }
}
