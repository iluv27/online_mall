import 'package:flutter/material.dart';
import 'package:online_mall/widgets/yelllow_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/inapp/bgimage.jpg'), fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'WELCOME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 120,
                width: 200,
                child: Image.asset('images/inapp/logo.jpg'),
              ),
              const Text(
                'SHOP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Suppliers only',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 65,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(192, 77, 77, 77),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Image(
                              image: AssetImage('images/inapp/logo.jpg'),
                            ),
                            YellowButton(
                              label: 'Login',
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/supplier_home');
                              },
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 25)),
                            ),
                            YellowButton(
                              label: 'Sign up',
                              onPressed: () {},
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 25)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(192, 77, 77, 77),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        YellowButton(
                          label: 'Login',
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/customer_home');
                          },
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 25)),
                        ),
                        YellowButton(
                          label: 'Sign up',
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/customer_signup');
                          },
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 25)),
                        ),
                        const Image(
                          image: AssetImage('images/inapp/logo.jpg'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(color: Colors.white38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GoogleFacebookLogin(
                        onPressed: () {},
                        label: 'Google',
                        child: Image.asset(
                          'images/inapp/google.jpg',
                        ),
                      ),
                      GoogleFacebookLogin(
                        onPressed: () {},
                        label: 'Facebook',
                        child: Image.asset(
                          'images/inapp/facebook.jpg',
                        ),
                      ),
                      GoogleFacebookLogin(
                        onPressed: () {},
                        label: 'Guest',
                        child: const Icon(
                          Icons.person,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleFacebookLogin extends StatelessWidget {
  const GoogleFacebookLogin(
      {super.key,
      required this.child,
      required this.label,
      required this.onPressed});

  final Function() onPressed;
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          SizedBox(height: 50, width: 50, child: child),
          Text(
            label,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
