import 'package:flutter/material.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

class SupplierOrders extends StatelessWidget {
  const SupplierOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Supplier Orders'),
      ),
    );
  }
}
