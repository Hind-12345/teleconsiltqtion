import 'dart:async';
import 'package:flutter/material.dart';
import 'package:teleconsultation_medicale/screens/LanguageSelectionScreen.dart';
import 'package:teleconsultation_medicale/screens/splash/splash_screen.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  void initState() {
    super.initState();

    // Attendre 6 secondes, puis naviguer vers la suite
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LanguageSelectionScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 700,
          width: 500,
          child: Image.asset('assets/images/logo.png', fit: BoxFit.contain),
        ),
      ),
    );
  }
}
