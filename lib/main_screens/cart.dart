import 'package:flutter/material.dart';
import 'package:online_mall/main_screens/customer_home.dart';
import 'package:online_mall/widgets/appBar_widget.dart';
import 'package:online_mall/widgets/yelllow_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const AppBarTitle(title: 'Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: Stack(children: [
        // EMPTY CART & CONTINUE SHOPPING BTN
        Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Cart is Empty !',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const CustomerHomeScreen();
                  }));
                },
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                ),
                child: const Text(
                  'Continue Shopping',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),

        // BOTTOM CART ITEMS
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      'Total: \$ ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '00.00',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                YellowButton(
                  onPressed: () {},
                  label: 'CHECK OUT',
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 25)),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
