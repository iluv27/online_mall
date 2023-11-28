import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          expandedHeight: 140,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            return FlexibleSpaceBar(
              title: AnimatedOpacity(
                opacity: constraints.biggest.height < 120 ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: const Text(
                  'Account',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Color(0xFF4D9CB2), Colors.brown]),
                ),
              ),
            );
          }),
        )
      ],
    ));
  }
}
