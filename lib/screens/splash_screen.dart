import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the LoginScreen
import 'dart:async'; // Import for Timer

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDD7520), // 0% color (Darker orange)
              Color(0xFF773F11), // 100% color (Darkest orange/Brown)
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/zeus splash logo.png',
            width: 500,
          ),
        ),
      ),
    );
  }
}
