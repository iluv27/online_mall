import 'package:flutter/material.dart';
import 'package:online_mall/main_screens/customer_home.dart';
import 'package:online_mall/main_screens/supplier_home.dart';
import 'package:online_mall/main_screens/welcome_screen.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            titleTextStyle: TextStyle(color: Colors.black)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/supplier_home': (context) => const SupplierHomeScreen(),
        '/customer_home': (context) => const CustomerHomeScreen()
      },
    );
  }
}
