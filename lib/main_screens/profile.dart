import 'package:flutter/material.dart';
import 'package:online_mall/customer_screens/customer_orders.dart';
import 'package:online_mall/customer_screens/wishlist.dart';
import 'package:online_mall/main_screens/cart.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xFF4D9CB2), Colors.brown]),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                elevation: 0,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(builder: (context, constraints) {
                  return FlexibleSpaceBar(
                    title: AnimatedOpacity(
                      opacity: constraints.biggest.height < 100 ? 1 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: const Text(
                        'Account',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF4D9CB2), Colors.brown]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('images/inapp/guest.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                'guest'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const CartScreen())));
                            },
                            child: Container(
                              height: 65,
                              width: MediaQuery.sizeOf(context).width * 0.25,
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const CustomerOrders())));
                            },
                            child: Container(
                              height: 65,
                              width: MediaQuery.sizeOf(context).width * 0.25,
                              decoration: const BoxDecoration(
                                color: Color(0xFF4D9CB2),
                              ),
                              child: const Center(
                                child: Text(
                                  'Orders',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const Wishlist())));
                            },
                            child: Container(
                              height: 65,
                              width: MediaQuery.sizeOf(context).width * 0.25,
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Wishlist',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                            child: Image(
                                image: AssetImage('images/inapp/logo.jpg')),
                          ),
                          const ProfileHeaderLabel(
                            headerLabel: '  Account Info.  ',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RepeatedListTile(
                                    title: 'Email',
                                    subTitle: 'example@gmail.com',
                                    icon: Icons.email,
                                  ),
                                  YellowDivider(),
                                  RepeatedListTile(
                                    title: 'Phone No.',
                                    subTitle: '+11111',
                                    icon: Icons.phone,
                                  ),
                                  YellowDivider(),
                                  RepeatedListTile(
                                    title: 'Address',
                                    subTitle: 'example: 140 st - New Jersey',
                                    icon: Icons.location_pin,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const ProfileHeaderLabel(
                            headerLabel: '  Account Settings  ',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RepeatedListTile(
                                    title: 'Edit Profile',
                                    onPressed: () {},
                                    icon: Icons.edit,
                                  ),
                                  const YellowDivider(),
                                  RepeatedListTile(
                                    title: 'Change Password',
                                    onPressed: () {},
                                    icon: Icons.lock,
                                  ),
                                  const YellowDivider(),
                                  RepeatedListTile(
                                    title: 'Log out',
                                    onPressed: () {},
                                    icon: Icons.logout,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      color: Color(0xFF4D9CB2),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  const RepeatedListTile(
      {super.key,
      required this.title,
      this.subTitle = '',
      required this.icon,
      this.onPressed});

  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  const ProfileHeaderLabel({super.key, required this.headerLabel});

  final String headerLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
