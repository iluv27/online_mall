import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class EditBusiness extends StatelessWidget {
  const EditBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Edit Business'),
      ),
    );
  }
}
