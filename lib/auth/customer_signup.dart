import 'package:flutter/material.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({super.key});

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/welcome_screen');
                  },
                  icon: const Icon(
                    Icons.home_work,
                    size: 40,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.purpleAccent,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
