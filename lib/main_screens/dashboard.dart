import 'package:flutter/material.dart';
import 'package:online_mall/dashboard_components/edit_business.dart';
import 'package:online_mall/dashboard_components/manage_products.dart';
import 'package:online_mall/dashboard_components/my_store.dart';
import 'package:online_mall/dashboard_components/supp_balance.dart';
import 'package:online_mall/dashboard_components/supp_statics.dart';
import 'package:online_mall/dashboard_components/suppl_orders.dart';
import 'package:online_mall/widgets/appBar_widget.dart';

List<String> label = [
  'My store',
  'Orders',
  'Edit pofile',
  'Manage product',
  'Balance',
  'Statics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart
];

List<Widget> pages = const [
  MyStore(),
  SupplierOrders(),
  EditBusiness(),
  ManageProducts(),
  BalanceScreen(),
  StaticsScreen(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const AppBarTitle(title: 'Dashboard'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 40, crossAxisSpacing: 30),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return pages[index];
                  }));
                },
                child: Card(
                  color: Colors.blueGrey.withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        icons[index],
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        label[index].toUpperCase(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
