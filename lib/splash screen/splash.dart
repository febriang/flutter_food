import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_food/themes.dart';
import 'package:flutter_food/screen/home.dart' as users;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(new MaterialPageRoute(builder: (_) =>
        const users.Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        color: yellowColor,
        child: Center(
          child: CircleAvatar(
            backgroundColor: whiteColor,
            radius: 120,
            backgroundImage: AssetImage('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
