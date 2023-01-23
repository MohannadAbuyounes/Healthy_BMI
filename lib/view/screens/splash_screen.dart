import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_healthy/view/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(202, 194, 255, 1),
              Color.fromRGBO(131, 143, 245, 1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 5,
            ),
            const Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
              color: Colors.white70,
            ),
            SizedBox(height: size.height / 20),
            Container(
              height: size.height / 15,
              width: size.width / 1.15,
              child: const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: size.height / 10,
              width: size.width / 1.15,
              child: const Text(
                'We are glad to see you... \nGo find out your healthy weight We follow some great tips.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: size.height / 10),
            Container(
              height: size.height / 20,
              width: size.height / 20,
              child: const CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
